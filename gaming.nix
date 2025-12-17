{ config, pkgs, ... }:

{
  # Gaming - Steam i wsparcie dla 32-bit
  programs.steam = {
    enable = true;
    remotePlay.openFirewall = true;
    dedicatedServer.openFirewall = true;
    gamescopeSession.enable = true;
  };

  # Wsparcie dla 32-bitowych bibliotek (potrzebne dla gier)
  hardware.graphics = {
    enable = true;
    enable32Bit = true;
  };

  # Dodatkowe narzędzia gaming
  environment.systemPackages = with pkgs; [
    lutris
    wine
    winetricks
    gamescope
    mangohud
  ];
}
