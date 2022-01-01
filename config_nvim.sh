#!/bin/bash -e

DOT_FILE_REPO="https://github.com/RunningIkkyu/dotfiles.git"

# The [ -t 1 ] check only works when the function is not called from
# a subshell (like in `$(...)` or `(...)`, so this hack redefines the
# function at the top level to always return false when stdout is not
# a tty.
if [ -t 1 ]; then
  is_tty() {
    true
  }
else
  is_tty() {
    false
  }
fi


command_exists() {
  command -v "$@" >/dev/null 2>&1
}

# shellcheck disable=SC2016 # backtick in single-quote
fmt_code() {
  is_tty && printf '`\033[2m%s\033[22m`\n' "$*" || printf '`%s`\n' "$*"
}

fmt_error() {
  printf '%sError: %s%s\n' "$BOLD$RED" "$*" "$RESET" >&2
}

# Check nvim version, if it's too old or not installed, exit
check_nvim_version() {
  # check if nvim version >= 0.6
  if command_exists nvim; then
    NVIM_VERSION=$(nvim --version | head -n 1 | grep -oE 'v0.[5-9.]+')
    if [ "$NVIM_VERSION"  == "" ]; then
        fmt_error "nvim version >= 0.6 is required"
        exit 1
    fi
   else
    fmt_error "nvim is not installed"
    exit 1
  fi
}

# Clone dotfile to home/.dotfiles
clone_dotfiles() {
    command_exists git || {
        fmt_error "git is not installed"
        exit 1
    }
    echo "${BLUE}Cloning dotfiles...${RESET}"
    git clone --depth=1 ${DOT_FILE_REPO} ${HOME}/.config/dotfiles || {
        fmt_error "`echo $RED` git clone of oh-my-zsh repo failed"
        exit 1
    }
}

link_nvim_config() {
    echo "${BLUE}Linking nvim config...${RESET}"
    if [[ -e ${HOME}/.config/nvim ]]; then
        echo "${YELLOW}nvim config already exists, Please backup or remove ${HOME}/.config/nvim. ${RESET}"
        exit 1
    fi
    ln -s ${HOME}/.config/dotfiles/nvim ${HOME}/.config/nvim
}

install_packer_for_nvim() {
    command_exists git || {
        fmt_error "git is not installed"
        exit 1
    }
    echo "${BLUE}Installing packer for nvim...${RESET}"
    # If Packer is not installed, Install packer.nvim.
    if ! [[ -e  ${HOME}/.local/share/nvim/site/pack/packer/start/packer.nvim ]]; then
        git clone --depth 1 https://github.com/wbthomason/packer.nvim\
            ${HOME}/.local/share/nvim/site/pack/packer/start/packer.nvim
    fi
}

install_neovim_plugin(){
    install_packer_for_nvim
    echo "${BLUE}Installing neovim plugin...${RESET}"
    nvim +PlugInstall +qall
}


setup_neovim(){
    check_nvim_version
    clone_dotfiles
    link_nvim_config
    install_neovim_plugin
}

setup_neovim
