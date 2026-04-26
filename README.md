HEAD
# My Linux Dotfiles

This is personal Linux configuration setup for KDE-based Arch/Garuda system.

It store desktop environment, shell config, themes, and installed packages so system can rebuild or migrate to another system quickly.

---

### What’s included

Desktop environment (KDE Plasma)
- `kdeglobals` → global KDE settings
- `kwinrc` → window manager rules
- `plasmarc` → Plasma behaviour config
- `plasma-org.kde.plasma.desktop-appletsrc` → panel + widget layout

Appearance
- `gtk-3.0/` → GTK app theming
- `gtk-4.0/` → GTK4 theming

Shell
- `.bashrc` → terminal configuration, aliases, environment tweaks

Autostart
- `autostart/` → applications launched on login

System packages
- `pkglist.txt` → list of installed packages for system rebuild

---

### Purpose

This repo used to:
- Recreate desktop setup
- Keep track of system config changes over time
- Maintain consistency across installations
- Experiment with customisation safely

---

### Rebuilding system (manual outline)

1. Install base (Arch/Garuda KDE)
2. Install packages `pkglist.txt`
3. Copy config files `~/.config/`
4. Replace shell config (`.bashrc`)
5. Apply GTK themes
6. Restore autostart apps

---

### Notes

- This does NOT include full system state yet (drivers, kernel config, etc.)
- Designed for KDE Plasma on Wayland
- Some configs may be system/version dependent

---

### TL;DR

This setup treats Linux as a version-controlled environment, not a static OS.

Everything important is defined as config files rather than manual UI changes.

---
eea41911abdbe2cb48e2f71e1fffa402eec917b2
