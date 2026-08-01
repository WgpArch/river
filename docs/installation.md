# 🛠️ Installation

This configuration is designed to be deployed using GNU Stow on Arch Linux.

## Prerequisites
Ensure you have the following packages installed:

**Core:**
- `river`
- `waybar`
- `rofi`
- `swaybg`
- `swaync` (Notification center)
- `filtile` (Layout generator - available in AUR)

**Scripts & Utilities:**
- `grim` & `slurp` (Screenshots)
- `playerctl` (Media player bindings)
- `brightnessctl` (Laptop backlight)
- `wpctl` / `pamixer` (Volume control)
- `pavucontrol` (Volume GUI)
- `swayidle` (Screen idle/lock)

## Deploying the Config

1. Install Stow: `sudo pacman -S stow`
2. Clone the repository:

        git clone https://codeberg.org/WgpArch/river.git ~/.dotfiles/river

3. Deploy using Stow:

        cd ~/.dotfiles && stow river

4. Ensure scripts are executable:

        chmod +x ~/.config/river/scripts/*

## 🌤️ Weather Widget Setup
The Waybar weather widget uses a custom Ruby script (`parse_weather.rb`).

1. Install dependencies: `sudo pacman -S ruby noto-fonts-emoji wget jq`
2. The script relies on `/etc/get_weather` for your personal API key and location. **Replace with your own values before using.**
