# River Wayland Compositor Config

> Personal River setup for Arch Linux. Primarily for my own version control and backup, but freely available to browse, fork, or adapt.

---

## ⚠️ Important: Read Before Using

This is **not** a typical, beginner-friendly Arch + Wayland setup.  
My configuration reflects years of experimentation, specific hardware, and intentional trade-offs. I prioritize flexibility and aesthetic consistency over minimalism.

**Using files from this repository will modify your `~/.config` directory.**  
🔹 **Always back up your existing config first**: `cp -a ~/.config ~/.config.backup.$(date +%F)`  
🔹 **No guarantees of stability or compatibility on other systems.**

If you're comfortable with that, feel free to take what works for you.

---

## 📦 How to Use (With GNU Stow)

1. **Install Stow**: `sudo pacman -S stow`
2. **Clone this repo**: `git clone <repo-url> ~/.dotfiles`
3. **Deploy River config**: `cd ~/.dotfiles && stow river`
4. **Reload River**: `Super+R` (or restart session)

🔁 **Updating**: `cd ~/.dotfiles && git pull && stow river`

---

## 🌤️ Weather Widget Note

This setup includes a weather script that uses OpenWeatherMap.  
⚠️ `/etc/get_weather` contains my personal API key and location. **Replace with your own values before using.**

Find your coordinates: https://www.latlong.net/  
Get a free API key: https://openweathermap.org/api

---

## 📋 My Setup

- **OS**: Arch Linux (rolling)
- **Compositor**: River (dynamic Wayland)
- **Bar**: Waybar (River-specific theme in `.config/waybar/river/`)
- **Launcher**: Rofi (cyber-neon theme)
- **Tiling**: filtile-git (autotiling with 50/50 split)
- **Font**: Z003 (with JetBrainsMono Nerd Font fallback for icons)

*This repo is personal, but open. Use what helps you, ignore what doesn't.*
