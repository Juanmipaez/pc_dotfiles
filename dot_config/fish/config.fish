source /usr/share/cachyos-fish-config/cachyos-config.fish


# overwrite greeting
# potentially disabling fastfetch
#function fish_greeting
#    # smth smth
set -gx PATH /opt/cuda/bin $PATH
set -gx LD_LIBRARY_PATH /opt/cuda/lib64 $LD_LIBRARY_PATH
#end
