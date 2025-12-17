{ config, pkgs, ... }:

{
  # KDE Plasma 6
  services.displayManager.sddm = {
    enable = true;
    wayland.enable = true;  # Używaj Wayland dla lepszej wydajności
  };
  
  services.desktopManager.plasma6.enable = true;

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
