# Zsh settings
autoload -U compinit
compinit
zstyle ':completion::complete:*' use-cache 1

# Oh My Zsh settings
ZSH_THEME="dracula"
HYPHEN_INSENSITIVE="true"
DISABLE_AUTO_UPDATE="true"
ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"
plugins=(dirhistory git)

# Source scripts
source $ZSH/oh-my-zsh.sh

# Load nvm
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

# Define aliases
alias ani-cli="ani-cli -q best"
alias doas=$'nocorrect doas\t'
alias du="du -h"
alias kernelupdate="cd /usr/src/linux && doas make clean -j16 && doas make modules_prepare -j16 && time doas make -j16 && doas make modules_install -j16 && \
    doas make install && doas emerge @module-rebuild && doas grub-mkconfig -o /boot/grub/grub.cfg"
alias lf="lf-sixel"
alias librewolf="librewolf-bin"
alias ls="lsd"
alias links="links -g"
alias neofetch="neofetch --chafa pictures/misc/gentoo_logo.png --size 219"
alias sudo=$'nocorrect doas\t'
alias top="btop"
alias tree="lsd --tree"
alias vi="lvim"
alias vim="lvim"
alias vimake="doas nvim /etc/portage/make.conf"
alias vivim="lvim ~/.vimrc"
alias vixinit="lvim ~/.xinitrc"
alias vizsh="lvim ~/.config/zsh/.zshrc"
alias vrms="vrms-gentoo"
alias wallpaper="swaybg -i"
alias world="cat /var/lib/portage/world"
alias ytfzf="ytfzf -t -T sixel --async-thumbnails"

# Fix foot ssh rendering
if [[ $TERM = "foot" ]]; then
  alias ssh='TERM=linux ssh'
fi
# Define Dracula TTY colorscheme and TTY-specific aliases
if [ "$TERM" = "linux" ]; then
	printf %b '\e[40m' '\e[8]' # set default background to color 0 'dracula-bg'
	printf %b '\e[37m' '\e[8]' # set default foreground to color 7 'dracula-fg'
#	printf %b '\e]P0282a36'    # redefine 'black'          as 'dracula-bg'
	printf %b '\e]P86272a4'    # redefine 'bright-black'   as 'dracula-comment'
	printf %b '\e]P1ff5555'    # redefine 'red'            as 'dracula-red'
	printf %b '\e]P9ff7777'    # redefine 'bright-red'     as '#ff7777'
	printf %b '\e]P250fa7b'    # redefine 'green'          as 'dracula-green'
	printf %b '\e]PA70fa9b'    # redefine 'bright-green'   as '#70fa9b'
	printf %b '\e]P3f1fa8c'    # redefine 'brown'          as 'dracula-yellow'
	printf %b '\e]PBffb86c'    # redefine 'bright-brown'   as 'dracula-orange'
	printf %b '\e]P4bd93f9'    # redefine 'blue'           as 'dracula-purple'
	printf %b '\e]PCcfa9ff'    # redefine 'bright-blue'    as '#cfa9ff'
	printf %b '\e]P5ff79c6'    # redefine 'magenta'        as 'dracula-pink'
	printf %b '\e]PDff88e8'    # redefine 'bright-magenta' as '#ff88e8'
	printf %b '\e]P68be9fd'    # redefine 'cyan'           as 'dracula-cyan'
	printf %b '\e]PE97e2ff'    # redefine 'bright-cyan'    as '#97e2ff'
	printf %b '\e]P7f8f8f2'    # redefine 'white'          as 'dracula-fg'
	printf %b '\e]PFffffff'    # redefine 'bright-white'   as '#ffffff'
	clear
    alias mpv="mpv --vo=drm"
fi

# THE FUN STUFF...
#clear
#~/.local/share/color-scripts/mouseface
neofetch --chafa pictures/misc/gentoo_logo.png --size 219
#echo "let's all love lain\n" | lolcat
