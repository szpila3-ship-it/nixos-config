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
