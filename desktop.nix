{ config, pkgs, ... }:

{
  # KDE Plasma 6
  services.displayManager.sddm = {
    enable = true;
    wayland.enable = true;  # Wracamy na Wayland
  };
  
  services.desktopManager.plasma6.enable = true;

  # Włącz X11 (potrzebne dla SDDM)
  services.xserver = {
    enable = true;
    
    xkb = {
      layout = "pl";
      variant = "";
    };
  };

  console.keyMap = "pl2";

  # Libinput
  services.libinput = {
    enable = true;
    touchpad.naturalScrolling = false;
    mouse.naturalScrolling = false;
  };

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
