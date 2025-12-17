{ config, pkgs, ... }:

{
  # KDE Plasma 6
  services.xserver.enable = true;
  
  services.displayManager.sddm = {
    enable = true;
  };
  
  services.desktopManager.plasma6.enable = true;
  
  # Konfiguruj monitory
  services.xserver.displayManager.setupCommands = ''
    ${pkgs.xorg.xrandr}/bin/xrandr --auto
  '';

  # Klawiatura
  services.xserver.xkb = {
    layout = "pl";
    variant = "";
  };
  console.keyMap = "pl2";

  # Dźwięk
  services.pulseaudio.enable = false;
  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
  };
}
