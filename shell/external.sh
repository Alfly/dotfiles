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
. "$HOME/.cargo/env"
export RUSTUP_DIST_SERVER="https://rsproxy.cn"
export RUSTUP_UPDATE_ROOT="https://rsproxy.cn/rustup"

# gcc
export CFLAGS="-Wall -O2 -g3 -pthread"
