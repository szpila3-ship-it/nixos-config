# Polski

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
- `sync.nix` - skrypt do synchronizacji z GitHub

## Instalacja na nowym systemie
```bash
# Sklonuj repo
git clone https://github.com/szpila3-ship-it/nixos-config /tmp/nixos-config

# Skopiuj pliki
sudo cp /tmp/nixos-config/*.nix /etc/nixos/

# Wygeneruj hardware-configuration.nix
sudo nixos-generate-config --show-hardware-config > /etc/nixos/hardware-configuration.nix

# Utwórz plik z hasłem użytkownika
mkpasswd -m sha-512  # skopiuj output
sudo mkdir -p /etc/nixos-secrets
echo 'TWÓJ_HASH' | sudo tee /etc/nixos-secrets/draxmen-password
sudo chmod 600 /etc/nixos-secrets/draxmen-password

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

## Synchronizacja do GitHub
```bash
# Ręcznie, kiedy chcesz zsynchronizować zmiany:
sudo nixos-sync
```

## 🔒 Bezpieczeństwo

**WAŻNE:** Hasła użytkowników są przechowywane poza repo w `/etc/nixos-secrets/`

- `openssl-1.1.1w` jest wymagany przez Sublime Text 4 (proprietary binary)
- NIE commituj plików z hasłami do Git
- Po sklonowaniu repo musisz ręcznie utworzyć plik z hasłem

---

# English

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
- `sync.nix` - GitHub sync script

## Installation on a new system
```bash
# Clone repo
git clone https://github.com/szpila3-ship-it/nixos-config /tmp/nixos-config

# Copy files
sudo cp /tmp/nixos-config/*.nix /etc/nixos/

# Generate hardware-configuration.nix
sudo nixos-generate-config --show-hardware-config > /etc/nixos/hardware-configuration.nix

# Create user password file
mkpasswd -m sha-512  # copy output
sudo mkdir -p /etc/nixos-secrets
echo 'YOUR_HASH' | sudo tee /etc/nixos-secrets/draxmen-password
sudo chmod 600 /etc/nixos-secrets/draxmen-password

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

## Sync to GitHub
```bash
# Manually, when you want to sync changes:
sudo nixos-sync
```

## 🔒 Security

**IMPORTANT:** User passwords are stored outside repo in `/etc/nixos-secrets/`

- `openssl-1.1.1w` is required by Sublime Text 4 (proprietary binary)
- DO NOT commit password files to Git
- After cloning, you must manually create the password file
