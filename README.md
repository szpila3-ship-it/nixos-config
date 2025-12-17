<<<<<<< HEAD
=======
#Polski
>>>>>>> 2094e8ee6d2feb2649e96ba3df697395ca1979d2
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
<<<<<<< HEAD
=======

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
>>>>>>> 2094e8ee6d2feb2649e96ba3df697395ca1979d2
