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
    ./gaming.nix
    ./services.nix
  ];

  nixpkgs.config.allowUnfree = true;
  nixpkgs.config.permittedInsecurePackages = [
    "openssl-1.1.1w"
  ];

  # Wersja systemu
  system.stateVersion = "24.05";
}
