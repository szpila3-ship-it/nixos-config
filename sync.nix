{ config, pkgs, ... }:

{
  # Skrypt do synchronizacji konfiguracji z GitHub
  environment.systemPackages = with pkgs; [
    (writeScriptBin "nixos-sync" ''
      #!/usr/bin/env bash
      set -e
      
      REPO_DIR="/home/draxmen/nixos-config"
      
      echo "📦 Synchronizing NixOS configuration to GitHub..."
      
      # Skopiuj wszystkie .nix oprócz hardware-configuration.nix
      cd /etc/nixos
      for file in *.nix; do
        if [ "$file" != "hardware-configuration.nix" ]; then
          cp "$file" "$REPO_DIR/"
        fi
      done
      
      # Zmień właściciela
      chown -R draxmen:users "$REPO_DIR"
      
      # Git operations
      cd "$REPO_DIR"
      sudo -u draxmen ${pkgs.git}/bin/git add .
      
      if sudo -u draxmen ${pkgs.git}/bin/git diff --staged --quiet; then
        echo "✅ No changes to commit"
        exit 0
      fi
      
      sudo -u draxmen ${pkgs.git}/bin/git commit -m "Auto-update: $(date '+%Y-%m-%d %H:%M:%S')"
      sudo -u draxmen ${pkgs.git}/bin/git push origin main
      
      echo "✅ Configuration synced to GitHub!"
    '')
  ];
  
  # Automatyczna synchronizacja po każdym rebuild
  system.activationScripts.syncToGithub = ''
    if [ -d /home/draxmen/nixos-config/.git ]; then
      echo "🔄 Syncing to GitHub..."
      ${pkgs.bash}/bin/bash -c '
        cd /etc/nixos
        for file in *.nix; do
          [ "$file" != "hardware-configuration.nix" ] && cp "$file" /home/draxmen/nixos-config/ || true
        done
        chown -R draxmen:users /home/draxmen/nixos-config
        cd /home/draxmen/nixos-config
        sudo -u draxmen ${pkgs.git}/bin/git add . || true
        if ! sudo -u draxmen ${pkgs.git}/bin/git diff --staged --quiet 2>/dev/null; then
          sudo -u draxmen ${pkgs.git}/bin/git commit -m "Auto: $(date +%Y-%m-%d\ %H:%M)" || true
          sudo -u draxmen ${pkgs.git}/bin/git push origin main || true
          echo "✅ Synced!"
        fi
      ' || true
    fi
  '';
}
