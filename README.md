# Debian System Bootstrap (HaDeS)

Hades (stylized as HaDeS) is my own personal bootstrap scripts for taking a minimal Debian installation and turning it into my “standard” system.
While I won’t stop you from using my scripts, I’ve made no attempt to provide ways to customize or adapt it to your own preferences.

## Prerequisites
For the script to work properly you need a clean base image of Debian installed.
Fetch a minimal [netrins image of Debian](https://www.debian.org/distrib/) and
go through the setup.

### Installing Debian
To ensure a minimal install choose "Advanced options" -> "Expert install".
Go through the install process like normal.
There are only a few things to note during the install:

	1. Do not allow root login, instead opting for the regular user to be able to use 'sudo'.
	2. Do not enable backported software (this is important for things like dotfiles to have reliable versions of the software they configure)
	3. When choosing which software to install, disable everything. Yes, even "Standard system utilities".

## Bootstrapping the system (rename this header)
Once you're logged in to your fresh, new Debian system fetch and run the bootstrap script.
This will install the minimal tools to run the HaDeS install script and then launch it.

```bash
wget <insert link to GitHub bootstrap script here> && sudo ./bootstrap.sh
```

## Description of Scripts
To keep things organized the install script calls out to other sub-scripts.
Each one has a narrow set of responsibilities outlined below.

### 00-system.sh - Update & upgrade
- Update system
- Install core utilities (curl, git, build-essential, etc.)

### 10-packages.sh - Install your preferred package sets
- CLI tools
- Networking tools
- Compression utilities
- Add third‑party repos (Docker, VS Code, etc.)

### 20-desktop.sh - Set up Window Manager
- Install WM/DE (i3, sway, GNOME, etc.)
- Install display manager
- Install terminal emulator
- Fonts
- Configure themes, fonts, cursors

### 30-devtools.sh - Install language runtimes (Python, Node, Go, Rust, etc.)
- Install Docker or Podman
- Install editor (Neovim, VS Code, etc.)
- Install development libraries
- Install programming languages (Go, Rust, etc.)
- Install LSP servers

### 40-dotfiles.sh - Deploy Dotfiles
- Copy dotfiles into $HOME
- Run post‑install hooks (e.g., nvim --headless +PlugInstall +qall)

### 50-services.sh - Systemd, SSH keys, Firewall
- Enable systemd services
- Configure firewall

### 99-final.sh - Post-installation cleanup
- Autoremove unnecessary packages
- Remove hades/ directory
- Delete cloned directory
- Print a nice “done” message
- Optionally reboot
