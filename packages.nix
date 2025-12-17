{ config, pkgs, ... }:

{
  # Programy systemowe
  environment.systemPackages = with pkgs; [
    # Przeglądarki
    (google-chrome.override {
      commandLineArgs = [
        "--enable-features=UseOzonePlatform,WaylandWindowDecorations"
        "--ozone-platform=wayland"
        "--enable-wayland-ime"
      ];
    })
    firefox

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

    # Narzędzia systemowe
    rustdesk
    qdirstat
    tealdeer
    fastfetch
    qpwgraph
    qbittorrent

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
    avidemux
    haruna

    # Narzędzia KDE
    kdePackages.kate
    kdePackages.plasma-browser-integration

    # Dla KDE Plasma 6
    kdePackages.kconfig
    kdePackages.kservice
  ];
}
