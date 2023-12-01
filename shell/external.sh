# # pip should only run if there is a virtualenv currently activated
# export PIP_REQUIRE_VIRTUALENV=true

# # Cache pip-installed packages to avoid re-downloading
# export PIP_DOWNLOAD_CACHE=$HOME/.pip/cache

# # Python startup file
# export PYTHONSTARTUP=$HOME/.pythonrc

# # Vagrant
# export VAGRANT_DISABLE_VBOXSYMLINKCREATE=1

# # Docker
# export DOCKER_SCAN_SUGGEST=false

# Rust cargo/proxy
if [ -f "$HOME/.cargo/env" ]; then
    . "$HOME/.cargo/env"
fi
export RUSTUP_DIST_SERVER="https://rsproxy.cn"
export RUSTUP_UPDATE_ROOT="https://rsproxy.cn/rustup"

# gcc
export CFLAGS="-Wall -O2 -g3 -pthread"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/lfe/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/lfe/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/lfe/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/lfe/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<


# # Vagrant
# export VAGRANT_DISABLE_VBOXSYMLINKCREATE=1

# # Docker
# export DOCKER_SCAN_SUGGEST=false
