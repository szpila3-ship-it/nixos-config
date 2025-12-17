# /$$$$$$$                                                                  /$$$$$$ 
#| $$__  $$                                                                /$$__  $$
#| $$  \ $$  /$$$$$$  /$$$$$$  /$$   /$$ /$$$$$$/$$$$   /$$$$$$  /$$$$$$$ |__/  \ $$
#| $$  | $$ /$$__  $$|____  $$|  $$ /$$/| $$_  $$_  $$ /$$__  $$| $$__  $$   /$$$$$/
#| $$  | $$| $$  \__/ /$$$$$$$ \  $$$$/ | $$ \ $$ \ $$| $$$$$$$$| $$  \ $$  |___  $$
#| $$  | $$| $$      /$$__  $$  >$$  $$ | $$ | $$ | $$| $$_____/| $$  | $$ /$$  \ $$
#| $$$$$$$/| $$     |  $$$$$$$ /$$/\  $$| $$ | $$ | $$|  $$$$$$$| $$  | $$|  $$$$$$/
#|_______/ |__/      \_______/|__/  \__/|__/ |__/ |__/ \_______/|__/  |__/ \______/ 

#Polski
# Moja konfiguracja NixOS

## Struktura
- `configuration.nix` - główny plik importujący
- `boot.nix` - bootloader, kernel, zram
- `desktop.nix` - KDE Plasma, SDDM
- `networking.nix` - sieć, firewall
- `locale.nix` - lokalizacja, strefa czasowa, fonty
- `users.nix` - użytkownicy
- `packages.nix` - pakiety systemowe
- `gaming.nix` - Steam, gaming
- `services.nix` - serwisy systemowe

## Instalacja na nowym systemie
```bash
# Sklonuj repo
git clone https://github.com/TWOJA_NAZWA/nixos-config /tmp/nixos-config

# Skopiuj pliki
sudo cp /tmp/nixos-config/*.nix /etc/nixos/

# Wygeneruj hardware-configuration.nix
sudo nixos-generate-config --show-hardware-config > /etc/nixos/hardware-configuration.nix

# Rebuild
sudo nixos-rebuild switch
```

## Aktualizacja z repo
```bash
cd ~/nixos-config
git pull
sudo cp *.nix /etc/nixos/
sudo nixos-rebuild switch
```
# /$$$$$$$                                                                  /$$$$$$ 
#| $$__  $$                                                                /$$__  $$
#| $$  \ $$  /$$$$$$  /$$$$$$  /$$   /$$ /$$$$$$/$$$$   /$$$$$$  /$$$$$$$ |__/  \ $$
#| $$  | $$ /$$__  $$|____  $$|  $$ /$$/| $$_  $$_  $$ /$$__  $$| $$__  $$   /$$$$$/
#| $$  | $$| $$  \__/ /$$$$$$$ \  $$$$/ | $$ \ $$ \ $$| $$$$$$$$| $$  \ $$  |___  $$
#| $$  | $$| $$      /$$__  $$  >$$  $$ | $$ | $$ | $$| $$_____/| $$  | $$ /$$  \ $$
#| $$$$$$$/| $$     |  $$$$$$$ /$$/\  $$| $$ | $$ | $$|  $$$$$$$| $$  | $$|  $$$$$$/
#|_______/ |__/      \_______/|__/  \__/|__/ |__/ |__/ \_______/|__/  |__/ \______/ 

#English
# My NixOS Configuration

## Structure
- `configuration.nix` - main file importing all modules
- `boot.nix` - bootloader, kernel, zram
- `desktop.nix` - KDE Plasma, SDDM
- `networking.nix` - network, firewall
- `locale.nix` - localization, timezone, fonts
- `users.nix` - users
- `packages.nix` - system packages
- `gaming.nix` - Steam, gaming
- `services.nix` - system services

## Installation on a new system
```bash
# Clone repo
git clone https://github.com/YOUR_USERNAME/nixos-config /tmp/nixos-config

# Copy files
sudo cp /tmp/nixos-config/*.nix /etc/nixos/

# Generate hardware-configuration.nix
sudo nixos-generate-config --show-hardware-config > /etc/nixos/hardware-configuration.nix

# Rebuild
sudo nixos-rebuild switch
```

## Update from repo
```bash
cd ~/nixos-config
git pull
sudo cp *.nix /etc/nixos/
sudo nixos-rebuild switch
```
