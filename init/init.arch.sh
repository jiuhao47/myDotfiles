sudo pacman -Syu

pacman_dependencies=(
    git
    base-devel
    less
    net-tools
    openssh
    tmux
    wget
    rustup
    duf
    fzf
    docker
    docker-compose
    bash-completion
    python
    python-pip
    mdbook
    yazi
    htop
)

aur_dependencies=(
    neofetch
    lazygit
    sysz
    # lazydocker
)



install_pacman_dependencies() {
    sudo pacman -S --noconfirm "${pacman_dependencies[@]}"
}

install_aur_dependencies() {
    # using paru
    paru -S --noconfirm "${aur_dependencies[@]}"
    # clean cache
    # paru -Scc --noconfirm
}

install_nvidia_dependencies() {
    sudo pacman -S --noconfirm "${nvidia_dependencies[@]}"
}

install_paru(){
    if ! command -v paru &> /dev/null; then
        sudo pacman -S --needed base-devel
        git clone https://aur.archlinux.org/paru.git ~/software/paru
        cd ~/software/paru
        makepkg -si
    else
        echo "paru is already installed."
    fi
}


set_systemd_services() {
    sudo systemctl enable sshd
    sudo systemctl start sshd
}

set_git_config() {
    git config --global user.name "jiuhao47"
    git config --global user.email "jiangjunyan22@mails.ucas.ac.cn"
    git config --global init.defaultBranch "main"
}

set_docker_permissions(){
    if ! getent group docker > /dev/null; then
        sudo groupadd docker
    else
        echo "Docker group already exists."
    fi
    sudo usermod -aG docker "$USER"
    sudo systemctl enable docker
    sudo systemctl start docker
}

config_rust(){
    rustup default stable
}

main(){
    install_pacman_dependencies
    config_rust
    install_paru
    # install_aur_dependencies
    set_systemd_services
    set_git_config
    set_docker_permissions
}

main "$@"