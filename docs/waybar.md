# 📊 Waybar & Scripts

This setup uses a custom Waybar positioned at the top, specifically styled for River using a Catppuccin-based color scheme.

## 📐 Bar Layout

### Left
- **Custom Launcher:** Arch Linux icon. Opens Rofi (cyber-neon theme).
- **River Tags:** Displays 12 persistent workspace tags.
- **System Tray:** Standard app tray.

### Center
- **Clock:** Detailed date/time with calendar tooltip.
- **Custom Updates:** System update checker (Pacman + Trizen). Shows refresh icon when updates available.
- **Custom Weather:** Fetches weather via a custom Ruby script (`parse_weather.rb`).

### Right
- **Custom Player:** 🎵 Current media playback.
- **Pulseaudio:** Volume control with scroll support.
- **Temperature:** CPU/GPU temp with critical warnings.
- **Battery:** Battery percentage and status icons.
- **Memory:** RAM usage.
- **Disk:** Disk usage percentage.
- **Custom Power:** Power button. Opens Rofi power menu.

## 📜 Key Scripts

### Waybar Scripts
Located in `~/.config/waybar/river/scripts/`:

| Script | Description |
| :--- | :--- |
| `check_updates.sh` | Monitors Pacman and Trizen for system updates. Displays icon and detailed tooltip. |
| `player.sh` | Media player status and control. |

### River Scripts
Located in `~/.config/river/scripts/`:

| Script | Description |
| :--- | :--- |
| `rofi_powermenu` | Logout, reboot, and shutdown Rofi menu. |
| `take-screenshot` | Screenshot utility using grim/slurp. |
| `color` | Color picker utility. |
| `clip` | Clipboard history manager (using cliphist). |

## ⚙️ Configuration Files

- **Config**: `~/.config/waybar/river/config`
- **Style**: `~/.config/waybar/river/style.css`
- **Colors**: `~/.config/waybar/river/color.css`

## 🔄 Update Checker Details

The update checker module (`check_updates.sh`) runs every 30 minutes and:
- Checks for Pacman updates via `pacman -Qu`
- Checks for Trizen (AUR) updates via `trizen -Qu`
- Displays a refresh icon () when updates are available
- Displays a checkmark () when system is up to date
- Shows detailed list of available updates in tooltip on hover
