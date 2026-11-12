source /usr/share/cachyos-fish-config/cachyos-config.fish

# Editor (used by chezmoi edit, git, sudo -e, funced…)
set -gx EDITOR nvim
set -gx VISUAL nvim

# CUDA
fish_add_path -g /opt/cuda/bin
