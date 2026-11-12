# pc_dotfiles

My Linux desktop configuration, managed with [chezmoi](https://www.chezmoi.io/).

**System:** CachyOS (Arch-based) · niri (Wayland, scrolling tiling) · Noctalia shell · kitty + fish · VS Code

## What's here

| App | Files |
|---|---|
| niri | `~/.config/niri/config.kdl` + `cfg/*.kdl` (split by topic) |
| fish | `config.fish`, `fish_plugins` (plugins installed by fisher) |
| kitty | `kitty.conf`, Noctalia theme (seeded only if missing) |
| Noctalia | `config.toml` |
| VS Code | `User/settings.json` |
| Default apps | `~/.config/mimeapps.list` |
| git | `~/.gitconfig` |
| Electron apps | `~/.config/electron-flags.conf` (Wayland flags) |

Not tracked on purpose: SSH keys, `gh` tokens, browser/Thunderbird profiles, `fish_variables`, caches, and files that apps generate.

## New machine

```fish
# 1. Prerequisites
sudo pacman -S --needed chezmoi git fisher

# 2. Add this machine's SSH key to GitHub, then:
chezmoi init --apply git@github.com:Juanmipaez/pc_dotfiles.git

# 3. Reinstall fish plugins from fish_plugins
fisher update
```

## Daily workflow

```fish
chezmoi edit --apply ~/.config/<file>   # edit a config through chezmoi
chezmoi re-add                          # or: pull in changes an app made itself
chezmoi diff                            # should be empty
cd (chezmoi source-path)
git add -A; git commit -m "app: what changed"; git push
cd ~
```

When unsure: `chezmoi status` / `chezmoi diff` **before** `chezmoi apply`.

## Conventions

- One logical change per commit, message `app: what changed`.
- Generated files use the `create_` prefix (written once, then owned by the app).
- Plugin/package files are not tracked, only the lists that reinstall them.
