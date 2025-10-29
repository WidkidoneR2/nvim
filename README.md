# 🌙 Tokyo Night LazyVim Setup by WidkidoneR2

A clean, stable, and aesthetic Neovim configuration built on **LazyVim**, fully aligned with the Tokyo Night theme.  
This setup is part of a unified workflow across **Hyprland**, **Waybar**, **Alacritty**, and **LazyVim**, all sharing a consistent Tokyo Night look and feel.

---

## 🧠 Overview

- ⚙️ **Framework:** LazyVim (stable, no errors or warnings)
- 🎨 **Theme:** Tokyo Night (Night variant)
- 💻 **Languages:** Lua, Python, JSON, YAML
- 🪶 **Style:** Minimal, fast, and distraction-free
- 🔄 **Status:** Clean system baseline confirmed (2025-10-29)

---

## ✨ Features

- Zero startup errors or warnings  
- Tokyo Night UI consistency across all components  
- LazyVim menu functional and stable  
- LSP and Treesitter configured for Lua, Python, JSON, and YAML  
- Minimal plugin set for speed and maintainability  
- Modular file structure under `lua/config` and `lua/plugins`  

---

## ⌨️ Keymaps

> Below are common LazyVim and workflow keybindings.  
> (You can update this section later with your personal custom mappings.)

### 🗂 File Navigation
| Shortcut | Action |
|-----------|---------|
| `<leader>ff` | Find file |
| `<leader>fg` | Live grep |
| `<leader>fb` | List open buffers |
| `<leader>e`  | Toggle file explorer |

### 🧠 Code Navigation
| Shortcut | Action |
|-----------|---------|
| `gd` | Go to definition |
| `gr` | List references |
| `K` | Hover documentation |
| `<leader>rn` | Rename symbol |

### 🪄 Editing
| Shortcut | Action |
|-----------|---------|
| `gcc` | Toggle comment |
| `<C-s>` | Save file |
| `<leader>f` | Format file |

### 🪶 UI / Theme
| Shortcut | Action |
|-----------|---------|
| `<leader>tt` | Toggle Tokyo Night variant |
| `<leader>bd` | Close buffer |
| `<leader>qq` | Quit Neovim |

---

## 📦 Plugin Highlights

- LazyVim Core  
- Treesitter + LSP setup  
- Tokyo Night Theme  
- Mini plugins (animate, indentscope, starter)  
- Telescope & Oil integration  
- Snacks & utility functions

---

## 📁 File Structure

```bash
~/.config/nvim
├── init.lua
├── lazy-lock.json
├── lazyvim.json
├── LICENSE
├── README.md
├── stylua.toml
└── lua/
    ├── config/
    │   ├── autocmds.lua
    │   ├── keymaps.lua
    │   ├── lazy.lua
    │   └── options.lua
    └── plugins/

