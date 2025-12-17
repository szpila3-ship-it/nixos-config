{ config, pkgs, ... }:

let
  # Importuj NUR (Nix User Repository)
  nur = import (builtins.fetchTarball "https://github.com/nix-community/NUR/archive/master.tar.gz") {
    inherit pkgs;
  };
in
{
  # Programy systemowe
  environment.systemPackages = with pkgs; [
    # Przeglądarki
    google-chrome
    (google-chrome.override {
      commandLineArgs = [
        "--enable-features=UseOzonePlatform,WaylandWindowDecorations"
        "--ozone-platform=wayland"
        "--enable-wayland-ime"
      ];
    })
    firefox
    #nur.repos.novel2430.zen-browser-bin

    # Narzędzia podstawowe
    vim
    wget
    git
    nano

    # Sprawdzanie pisowni
    hunspell
    hunspellDicts.pl-pl

    # Edytory i narzędzia deweloperskie
    sublime4
    poedit

    # Ikony i motywy
    adwaita-icon-theme
    papirus-icon-theme

    # Pakiet biurowy
    #onlyoffice-desktopeditors

    # Narzędzia systemowe
    rustdesk
    qdirstat
    tealdeer
    fastfetch
    #gparted
    qpwgraph
    qbittorrent
    #winboat

    # Komunikatory
    discord
    signal-desktop
    telegram-desktop

    # Narzędzia dla trybu desktop/docking
    autorandr
    ddcutil
    brightnessctl
    powertop

    # Czcionki
    google-fonts

    # KDE i multimedia
    kdePackages.kdenlive
    #nur.repos.shadowrz.klassy-qt6
    avidemux
    haruna
    #darkly

    # Narzędzia KDE
    kdePackages.kate
    kdePackages.plasma-browser-integration

    # Dla KDE Plasma 6:
    kdePackages.kconfig
    kdePackages.kservice

  ];
}
