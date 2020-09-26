# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/home/neil/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="bureau"

# Set list of themes to load
# Setting this variable when ZSH_THEME=random
# cause zsh load theme from this variable instead of
# looking in ~/.oh-my-zsh/themes/
# An empty array have no effect
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git zsh-256color)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias rm="rm -i"
alias tmux="TERM=screen-256color-bce tmux"
alias show="xdg-open"
alias v="vim"
alias editpdf="flpsed"
alias latexmk='latexmk -f -gg -pdf -pvc'
alias lmt="gksu lmt-config-gui"
alias power="sudo powertop"
alias mv="mv -i"
alias fuck="cowsay \"don't worry! everything's ok\""
alias slowdown="sudo tc qdisc add dev wlp58s0 root netem delay 5000ms"
alias speedup="sudo tc qdisc del dev wlp58s0 root netem"
alias lookatme="sudo logkeys --start & sudo tail --follow /var/log/logkeys.log | grep --color -E '[0-9][0-9]:[0-9][0-9]:[0-9][0-9]'"
alias c="clear"

# GCP
# alias heck="gcloud compute --project \"heckell-199100\" ssh --zone \"us-east1-b\" \"heckell\""
#alias heck="ssh -i ~/.ssh/google_compute_engine -o UserKnownHostsFile=/dev/null -o CheckHostIP=no -o StrictHostKeyChecking=no nwc2112_columbia_edu@35.196.128.49"
#alias cicero="gcloud compute --project \"cifar-100\" ssh --zone \"us-east1-c\" \"cicero\""
#alias cato="gcloud compute --project \"cifar-100\" ssh --zone \"us-east1-d\" \"cato\""

# go
alias dep="~/go/bin/dep"

# OS W4118
#export ANDROID_SDK_ROOT="/home/neil/Desktop/senior/os/f18-hmwk2-setup/android-sdk"
#export ANDROID_SDK_HOME="/home/neil/Desktop/senior/os/f18-hmwk2-setup/android-sdk"
#export ANDROID_NDK_ROOT="/home/neil/android_ndk"
#export JAVA_HOME="/usr/lib/jvm/java-1.8.0-openjdk-amd64"
#alias runemulator="cd $ANDROID_SDK_ROOT/tools; ./emulator @w4118-GalaxyNexus -kernel /home/neil/Desktop/senior/os/f18-hmwk3-team12/kernel/arch/x86/boot/bzImage -show-kernel -no-snapshot-load"
#alias emulator="$ANDROID_SDK_ROOT/emulator/emulator"
#alias adb="~/adb-fastboot/platform-tools/adb"
#alias google="sudo /home/neil/Desktop/dev/googler/googler"
## SEEMS SHADY:
#export NDK_PATH="/home/neil/android-ndk/toolchains/llvm/prebuilt/linux-x86_64/bin"

export GOPATH=~/go
export PATH=$PATH:$GOPATH/bin
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/neil/Desktop/columbia/research/google-cloud-sdk/path.zsh.inc' ]; then source '/home/nwchen/Desktop/columbia/research/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/home/neil/Desktop/columbia/research/google-cloud-sdk/completion.zsh.inc' ]; then source '/home/nwchen/Desktop/columbia/research/google-cloud-sdk/completion.zsh.inc'; fi

# OPAM configuration
. /home/neil/.opam/opam-init/init.zsh > /dev/null 2> /dev/null || true
export NDK_PATH="~NDK3/bin"
export NDK_PATH="~/NDK3/bin"

# ROS configuration
source /opt/ros/melodic/setup.zsh
export LD_LIBRARY_PATH="/usr/local/lib:$LD_LIBRARY_PATH"
export graspit="~/.graspit"

# MuJoCo configuration
export LD_LIBRARY_PATH="$HOME/.mujoco/mujoco200/bin:$LD_LIBRARY_PATH"

# TF configuration
export PYTHONPATH=$PYTHONPATH:~/Desktop/tensorflow/models/research:~/Desktop/tensorflow/models/research/slim

# alias bright2="sudo vim /sys/class/backlight/intel_backlight/brightness"
alias wifi="nmtui"
alias wifioff="nmcli networking off && nmcli n wifi off"
alias wifion="nmcli networking on && nmcli n wifi on"
alias record="simplescreenrecorder"
alias idea="~/Desktop/config/idea/bin/idea.sh"
alias h="ghci-color"
alias bt="sudo systemctl status bluetooth.service"
alias bton="sudo systemctl enable bluetooth.service"
alias btoff="sudo systemctl disable bluetooth.service"
alias chrome="echo 'Consider using brave-browser.' && google-chrome >/dev/null &"
alias extend="xrandr --output DP-1 --auto --above eDP-1"
alias res="xrandr --output eDP-1 --mode"
alias brave="brave-browser >/dev/null &"
alias exercism="/snap/exercism/5/exercism"
alias calc="libreoffice --calc"
alias cap="import"
alias todo="~/Desktop/systems/todo.sh"
alias t=todo
alias food="calories"
alias weather="curl wttr.in"
alias define="dict"

function bright() 
{
	echo "$1" | sudo tee /sys/class/backlight/intel_backlight/brightness
}

function diary()
{
	vim ~/Desktop/writing/"$1"
}

export PATH="$PATH:/home/neil/android/platform-tools"
export PATH="$PATH:/home/neil/.cabal/bin/"
export PATH="$PATH:/home/neil/Desktop/automation/scala/scala-2.13.3/bin"
