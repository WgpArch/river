# 📊 Waybar & Scripts

This setup uses a custom Waybar positioned at the top, specifically styled for River using a Catppuccin-based color scheme.

## 📐 Bar Layout

### Left
- **Custom Launcher:** Arch Linux icon. Opens Rofi (cyber-neon theme).
- **River Tags:** Displays 11 persistent workspace tags.
- **System Tray:** Standard app tray.

### Center
- **Clock:** Detailed date/time with calendar tooltip.
- **Custom Weather:** Fetches weather via a custom Ruby script (`parse_weather.rb`).

### Right
- **Custom Player:** 🎵 Current media playback.
- **Pulseaudio:** Volume control with scroll support.
- **Temperature:** CPU/GPU temp with critical warnings.
- **Battery:** Battery percentage and status icons.
- **Memory:** RAM usage.
- **Custom Power:** Power button. Opens Rofi power menu.

## 📜 Key Scripts

Located in `~/.config/river/scripts/`:

| Script | Description |
| :--- | :--- |
| `rofi_powermenu` | Logout, reboot, and shutdown Rofi menu. |
| `take-screenshot` | Screenshot utility using grim/slurp. |
| `color` | Color picker utility. |
| `clip` | Clipboard history manager (using cliphist). |
