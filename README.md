<h1 align="center">【 venomous's dotfiles 】</h1>

<div align="center"> 

![](https://img.shields.io/github/last-commit/Venomous27/superior-dotfiles-mango?&style=for-the-badge&color=8ad7eb&logo=git&logoColor=D9E0EE&labelColor=1E202B)
![](https://img.shields.io/github/stars/Venomous27/superior-dotfiles-mango?style=for-the-badge&logo=andela&color=86dbd7&logoColor=D9E0EE&labelColor=1E202B)
![](https://img.shields.io/github/repo-size/Venomous27/superior-dotfiles-mango?color=86dbce&label=SIZE&logo=protondrive&style=for-the-badge&logoColor=D9E0EE&labelColor=1E202B)
<a href="https://discord.gg/wrtk6zXhJ"> <img alt="Dynamic JSON Badge" src="https://img.shields.io/badge/dynamic/json?url=https%3A%2F%2Fdiscordapp.com%2Fapi%2Finvites%2Fwrtk6zXhJ%3Fwith_counts%3Dtrue&query=approximate_member_count&style=for-the-badge&logo=discord&logoColor=D9E0EE&label=discord&labelColor=%231E202B&color=86dbc0&link=https%3A%2F%2Fdiscord.gg%2MCXNTxyD57"> </a>

</div>
<!--thanks end4 for these badges https://github.com/end-4 -->

A Simple and Beautiful Mango daily driver desktop environment.

--- 
---
> **⚠️ DISCLAIMER / WARNING:**
> These dotfiles have **not** been tested on a fresh system or a generic machine. They are deeply customized and work perfectly on my personal build, but things might break on yours. Please **be careful and take a complete backup of your configurations before doing anything**. I will not be held responsible for any damage, data loss, or broken setups!
---
---

## The Story Behind This Rice

> *"I knew exactly what I wanted, but I didn't have the time to learn how to code a desktop environment from scratch."*

C'mon buddy, I got so much school work to do and i can't afford to waste time to learn how to code a desktop environment from scratch instead of studying (I'm speaking like got books in my hand 24/7 lol). So yeah, these dotfiles are **built using AI.** I mean I'm trying to learn to code and i edited some stuff on my own in theses dotfiles. It's like I'm learning while making AI do it for me :p

Well I told AI what I wanted and it did the rest for me. Bruh it's not that easy tho. I still had to face many issues and spend hours to fix it. But yeah, it's worth it.
I love my Setup soooo much <3

---

## 📸 Previews & Media Showcase

### 🎥 Live Video Demos

## 🎨 Theme Switcher  


---

### 🖼️ System Screenshots


### Adding soon 

---

## ✨ Key Features

* **Proxy-Based Theme Switching:** Ehh it's just preconfigured thmes which copies the theme files into the active application configs.
* **All-in-One Rofi Menu Suite:** Yeah I use Rofi for everything. App launcher, theme switcher, wallpaper changer, power menu, clipboard history picker, and emoji/kaomoji/math-symbol/Nerd Font glyph picker.
* **Stow Managed:** Damn it's easy to manage dotfiles using Stow. Stow is used to symlink dotfiles from your folder (where you store your dotfiles) into the respective application's configuration directories.

---

## Install These :P

> ⚠️ **Important:** The theme switcher relies on a specific application. Like for example, I use Thunar as my file mannger and hence i made themes for it only. So basically it won't work for other applications which I don't use. So yeah install them if you want to use the theme switcher. It's optional but recommended :)

> **Platform note:** This setup targets **Arch Linux / CachyOS** specifically. Install everything below before stowing any config.

| Role | Component | Description | Why it's mandatory |
|---|---|---|---|
| **Compositor** | [MangoWM](https://mangowm.github.io/) | Lightweight& Feature-Rich | mangowm is a modern wayland compositor based on wlroots & scenefx. |
| **Terminal** | [Kitty](https://sw.kovidgoyal.net/kitty/) | GPU-accelerated terminal emulator | Custom configurations are written dynamically to its theme profiles. |
| **File Manager** | [Thunar](https://docs.xfce.org/xfce/thunar/start) | Lightweight file manager | The hardcoded target file manager for system UI paths. |
| **Symlinks** | [GNU Stow](https://www.gnu.org/software/stow/) | Manages dotfiles using symbolic links | Required to map these configurations into your `$HOME`. |
| **App Launcher** | [Rofi-Wayland](https://github.com/lbonn/rofi) | Wayland-compatible launcher and menu system | The core menu handler executing the theme selection menu. |
| **Status Bar** | [Wayle](https://wayle.app/guide/getting-started) | Highly customizable Wayland status bar | Displays live system/theme state and reflects proxy changes. |
| **Wallpaper Engine** | [awww](https://codeberg.org/LGFae/awww) | Animated wallpaper daemon for Wayland | Drives wallpaper transitions tied to each theme swap. |
| **Color Generation** | [Matugen](https://github.com/InioX/matugen) | Material You color schemes from wallpapers | Generates the palettes the proxy engine injects into app configs. |
| **Brightness** | [Brightnessctl](https://github.com/Hummer12007/brightnessctl) | CLI display brightness control | Powers brightness keybinds. |
| **Screenshot Editing** | [Satty](https://github.com/gabm/Satty) | Screenshot annotation tool for Wayland | Handles the annotate/edit step of the screenshot workflow. |
| **Screenshot Capture** | [Hyprshot](https://github.com/Gustash/Hyprshot) | Screenshot utility built for Hyprland | Handles the capture step of the screenshot workflow. |
| **Clipboard** | [wl-clipboard](https://github.com/bugaevc/wl-clipboard) | Wayland clipboard utilities (`wl-copy`/`wl-paste`) | Required for clipboard actions across the desktop. |
| **System Info** | [Fastfetch](https://github.com/fastfetch-cli/fastfetch) | Fast system information tool | Used in the terminal welcome layout. |
| **Idle Daemon** | [Swayidle](https://github.com/swaywm/swayidle) | Idle daemon for Sway | Triggers lock/sleep behavior. |
| **Screen Locker** | [QLOCK](https://github.com/Darkkal44/qylock) | Homie Cooked with This one | I use this one as my screen locker and for sddm theme |
| **XDG Utilities** | [xdg-utils](https://www.freedesktop.org/wiki/Software/xdg-utils/) | Utilities like `xdg-open` | Handles opening files/URLs from the desktop environment. |
| **xdg-desktop-portal-wlr** | [xdg-desktop-portal-wlr](https://github.com/swaywm/xdg-desktop-portal-wlr) | Wayland desktop portal implementation | Provides desktop portal services for Sway. |
| **Sound System** | PipeWire | Audio Server | Volume mixer keys and audio scripts rely on this control interface. |

---

## ⚠️ Important Note on Auto-Generated Files

Because this setup relies on a dynamic theme-switching engine, the primary runtime configuration files are handled as proxies.

When looking through the repository or your local `~/.config/`, you will notice this banner at the top of active application profiles:

```text
#################################################################
#           AUTO-GENERATED BY THEME SWITCHER PROXY              #
#                                                               #
#  DO NOT EDIT THIS FILE DIRECTLY. IT WILL BE OVERWRITTEN.      #
#  MAKE CHANGES IN THE THEME PALETTES FOLDER INSTEAD.           #
#################################################################
```

If you see this banner, edit the corresponding file in the theme palettes folder instead — direct edits will be wiped on the next theme switch.

---

## Installation

### 1. Install Dependencies

Install everything listed in the [Install These](#-Install-These-:P) table manually for now — some packages live in the official repos (`pacman`) and others in the AUR (`yay`/`paru`).

> 🦥 I'm too lazy to write out a full install command right now — might add a proper install script in the future. For now, go through the table above and install each package manually.
YEAH I"LL MAKE A INSTALL SCRIPT. AND I"LL MAKE IT ON MY OWN, NO AI. I'LL LEARN TO CODE. 

### 2. Back Up Existing Configs

> ⚠️ **Why this step matters:** GNU Stow will **not** overwrite files that already exist at the target location. If you already have configs sitting in `~/.config/` (e.g. `hypr`, `kitty`, `rofi`, `thunar`), Stow will detect the conflict and simply refuse to symlink — it exits without an error and without doing anything, so it can look like the install "worked" when nothing actually got linked. Move your existing configs out of the way first so Stow has a clean target to symlink into.

```bash
mkdir -p ~/.config-backup
mv ~/.config/{mango,kitty,waybar,rofi,thunar} ~/.config-backup/ 2>/dev/null
```

### 3. Clone the Repository

```bash
git clone https://github.com/Venomous27/superior-dotfiles-mango.git ~/superior-dotfiles-mango
cd ~/superior-dotfiles-mango
```

### 4. Deploy with Stow
> **⚠️ Note on Themes & Icons Folders:**
> I haven't included the `gtk-themes`, `icons`, `gtk-themes`, `xsettingsd`  folders in the default Stow command because they contain my actual theme files like the icons and themes I downloaded from the internet. So **just back-up your existing themes and icons first, delete your old folders, and then run Stow to link these. Then you can copy your custom themes and icons into the new (symlinked) folders.**

```bash
stow cava fastfetch hypr kitty rofi themes xsettingsd wayle matugen 
```

### 5. Verify & Launch

Restart Mango (or reboot), then confirm everything loaded:

```bash
mmsg dispatch reload_config
```
---

**Yeah I agree that I built this with AI and you call it slop and I agree that being overdedpendent on AI is not a good idea but I couldn't learn to code rn and I wanted a nice rice.**<br>
<br>**But hey, at least compliment me. I learned much more while building this. If you compare it to my previous dotfiles, you'll see that I did some manual tweaking in configuration and the last README was completely AI but this time I added little bit of my own touch.**<br>
<br>**I promise I'll learn to code soon enough.**

# Credits
<br>Lock Screen: https://github.com/Darkkal44 </br>
<br>Layout Switcher: https://github.com/SDG-Den </br>
