{ config, pkgs, ... }:

{
  imports = [
    ./hardware-configuration.nix
    ./boot.nix
    ./desktop.nix
    ./networking.nix
    ./locale.nix
    ./users.nix
    ./packages.nix
    ./services.nix
    ./sync.nix
    ./home-manager.nix
  ];

  nixpkgs.config.allowUnfree = true;
  
  # Dodaj tę sekcję tutaj:
  nix.settings.experimental-features = [ "nix-command" "flakes" ];  
  
  # Sublime Text 4 (build 4200) to proprietary binary prekompilowany
  # z OpenSSL 1.1.1. Nie można go przebudować z nowszym OpenSSL.
  nixpkgs.config.permittedInsecurePackages = [
    "openssl-1.1.1w"
  ];

  # ═══════════════════════════════════════════════════════════
  # NH - Nowoczesne narzędzie do zarządzania NixOS
  # ═══════════════════════════════════════════════════════════
  programs.nh = {
    enable = true;
    clean.enable = true;  # Automatyczne czyszczenie starych generacji
    clean.extraArgs = "--keep-since 7d --keep 3";  # Zachowaj 3 ostatnie + z ostatnich 7 dni
  };

  # Wersja systemu
  system.stateVersion = "24.05";
}
