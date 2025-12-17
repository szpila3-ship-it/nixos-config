{ config, pkgs, ... }:

{
  # Bootloader - konfiguracja dla Legion Go
  boot = {
    loader = {
      systemd-boot = {
        enable = true;
        consoleMode = "2";
      };
      efi.canTouchEfiVariables = true;
    };
    initrd.kernelModules = ["amdgpu"];
    kernelPackages = pkgs.linuxPackages_latest;
    kernelParams = [
      "amdgpu.dcdebugmask=0x10"
      "fbcon=rotate:3"
      # Optymalizacje boot dla handheld
      "quiet"           # Mniej logów
      "splash"          # Splash screen
      "loglevel=3"      # Reduced verbosity
      "rd.systemd.show_status=false"
      "rd.udev.log_level=3"
    ];
  };

  # Zram swap
  zramSwap = {
    enable = true;
    algorithm = "zstd";
    memoryPercent = 50;
  };

  # Zarządzanie energią (opcjonalne - dla lepszego battery life)
  powerManagement.cpuFreqGovernor = "schedutil";
}
