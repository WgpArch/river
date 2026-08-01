# 🎨 Look & Feel

This River config uses a clean, dark aesthetic heavily inspired by the Catppuccin Mocha palette, paired with the `filtile` layout generator.

## General Layout
- **Layout Generator:** `filtile` (Autotiling)
- **Main Ratio:** 0.5 (50/50 split, adjustable with `Super + H/L`)
- **Inner Gaps:** 4px
- **Outer Gaps:** 5px

## Colors
The border colors create a beautiful, subtle contrast against the dark background:
- **Background:** `#1E1D2F` (Catppuccin Base)
- **Focused Border:** `#FAE3B0` (Catppuccin Yellow)
- **Unfocused Border:** `#ABE9B3` (Catppuccin Green)

## Wallpaper
Managed by `swaybg`, set to fill a custom wallpaper (`Acitygirl.jpg`).

## Input Devices
- **Touchpad:** Natural scrolling, tap-to-click, and disable-while-typing are all enabled.
- **Keyboard:** Repeat rate set to 50, delay set to 300.
- **Cursor:** Automatically hidden when typing.

## GTK Theme
Enforced via `gsettings` to ensure legacy GTK apps match the dark aesthetic:
- **GTK Theme:** Flat-Remix-GTK-Blue-Darkest-Solid
- **Icon Theme:** Tela-circle-manjaro-dark
- **Cursor Theme:** Layan-cursors
