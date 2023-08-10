# Zsh environment file - Runs on login - Environment variables are set here.

# Environment variables:
export CCACHE_DIR="/var/cache/ccache"
export HISTFILE="$HOME/.cache/zsh/.zsh_history"
export HISTSIZE=10000000
export LF_ICONS="di=📁:fi=📃:tw=🤝:ow=📂:ln=⛓:or=❌:ex=🎯:*.txt=📃:*.mom=✍:*.me=✍:*.ms=✍:*.png=🖼:*.webp=🖼:*.ico=🖼:*.jpg=📸:*.jpe=📸:*.jpeg=📸:*.gif=🖼:*.svg=🗺:*.tif=🖼:*.tiff=🖼:*.xcf=🖌:*.html=🌎:*.xml=📰:*.gpg=🔒:*.css=🎨:*.pdf=📚:*.djvu=📚:*.epub=📚:*.csv=📓:*.xlsx=📓:*.tex=📜:*.md=📘:*.r=📊:*.R=📊:*.rmd=📊:*.Rmd=📊:*.m=📊:*.mp3=🎵:*.opus=🎵:*.ogg=🎵:*.m4a=🎵:*.flac=🎼:*.wav=🎼:*.mkv=🎥:*.mp4=🎥:*.webm=🎥:*.mpeg=🎥:*.avi=🎥:*.mov=🎥:*.mpg=🎥:*.wmv=🎥:*.m4b=🎥:*.flv=🎥:*.zip=📦:*.rar=📦:*.7z=📦:*.tar.gz=📦:*.z64=🎮:*.v64=🎮:*.n64=🎮:*.gba=🎮:*.nes=🎮:*.gdi=🎮:*.1=ℹ:*.nfo=ℹ:*.info=ℹ:*.log=📙:*.iso=📀:*.img=📀:*.bib=🎓:*.ged=👪:*.part=💔:*.torrent=🔽:*.jar=♨:*.java=♨:*.desktop=🖥️:*.wad=🎮:*.log=📓:*.exe=🍷:*.sh=🎯:"
export LIBVA_DRIVER_NAME="nvdec"
export MOZ_DISABLE_RDD_SANDBOX=1
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
export MOZ_X11_EGL=1
export PATH="/usr/lib/ccache/bin:/usr/lib/distcc/bin:$HOME/.local/bin:$HOME/.local/bin/statusbar:/etc/eselect/wine/bin:${PATH}"
export PIPEWIRE_LOG="/var/log/pipewire.log"
export SAVEHIST=10000000
export SDL_SOUNDFONTS="$HOME/music/soundfonts/GeneralUser GS v1.471.sf2"
export ZDOTDIR="$HOME/.config/zsh"
export ZSH_COMPDUMP="$HOME/.cache/zsh/.zcompdump-$HOST"
export ZSH="$HOME/.oh-my-zsh"

# Default programs:
export BROWSER="librewolf-bin"
export EDITOR="vim"
export FILE="pcmanfm"
export TERMINAL="foot"
