# ---------------------------------------------------------------------
# Basics

set -x PARINIT rTbgqR\ B\=.\,\?_A_a\ Q\=_s\>\|

# Some color in your life
alias ls='ls --color=auto'
alias dir='dir --color=auto'
alias vdir='vdir --color=auto'

# grep
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

# some more ls aliases
alias ll='ls -alFh'
alias la='ls -A'
alias l='ls -CF'

#----------------------------------------------------------------------
# My stuff

# Colors
# ------

set fish_color_user    ffffff
set fish_color_host    ffffff
set fish_color_param   e7cdf4
set fish_color_command 99c6ff
# set fish_color_param   7aa6da
# set fish_color_command c397d8

# Git
# ---

# fish git prompt
set __fish_git_prompt_showdirtystate 'yes'
set __fish_git_prompt_showstashstate 'yes'
set __fish_git_prompt_showupstream   'yes'
set __fish_git_prompt_color_branch   green

# Status Chars
set __fish_git_prompt_char_dirtystate  '✗'
set __fish_git_prompt_char_stagedstate '→'
set __fish_git_prompt_char_stashstate  '↩'
set __fish_git_prompt_char_upstream_ahead  '↑'
set __fish_git_prompt_char_upstream_behind '↓'

# Path to projects
# ----------------

set -x doyle    /home/mauricio/Documents/projects/ra/doyle/projects
set -x install  /home/mauricio/Documents/code/lib/install-arch.md
set -x projects /home/mauricio/Documents/projects
set -x dotvim   /home/mauricio/Documents/code/dotvim
set -x mbin     /home/mauricio/Documents/code/bin
set -x mlib     /home/mauricio/Documents/code/lib

set -x gems     /home/mauricio/.gem/ruby/2.3.0/bin
set -x rootgems /root/.gem/ruby/2.3.0/bin

if test -d $gems
    set PATH $gems $PATH
end

if test -d $mbin
    set PATH $mbin $PATH
end

npm config set prefix '~/.npm-global'
set PATH ~/.npm-global/bin $PATH

# Aliases
# -------

alias ack   'ack --color-match=bright_red --color-line=green'
alias ag    'ag --color-match="1;3;35" --color-line-number="32" --color-path="3;32;1" --column -S'
alias agc   'ag --color-match="1;3;35" --color-line-number="32" --color-path="3;32;1" --column --stats -S -C 2'
alias agrep 'ag --color-match="1;3;31" --color-line-number="32" --color-path="35" --noheading --column -S'
alias rcp   'rsync --progress --size-only --inplace --verbose'
alias vlch  'vlc --extraint http'

# Cat aliases. Named for fun but some are useful
# ----------------------------------------------

alias catssd       'sudo smartctl -a /dev/sdb1 | less'
alias cathdd       'sudo smartctl -a /dev/sda1 | less'
alias catspace     'du -Sm | sort -rn | less'
alias catping      'ping www.google.com'
alias catwants     'pacaur -S --needed --noconfirm'
alias cathates     'pacaur -R --noconfirm'
alias catupgrade   'pacaur -Syu --needed'
alias catsearch    'pacaur -Ss'
alias catedit      'vimw'
alias catunpack    'unp'
alias catsync      'rsync -arhlvv --progress'
alias catmatlab    '/usr/local/MATLAB/R2014b/bin/matlab'
alias catstar-wars 'telnet towel.blinkenlights.nl'

alias catup        'xdotool key XF86MonBrightnessUp'
alias catdown      'xdotool key XF86MonBrightnessDown'
alias catleapcast  'cd $HOME/.virtualenvs; leapcast'
alias catbattery   'upower -i /org/freedesktop/UPower/devices/battery_BAT0'
alias catsweave    'R CMD Sweave --pdf'
alias catfuze      '/usr/bin/fuze'
alias catcopy      'xsel --clipboard --input'
alias catpaste     'xsel --clipboard --output'
alias catshred     'shred -zuv'
alias catrsync     'rsync -arhlvv --progress --update'

alias catborg      'borg create --stats --progress --verbose --compression lz4'
alias catgitpush   'git push -u origin --all; git push -u origin --tags'
alias catredmine   'cd /usr/share/webapps/redmine; bundle exec rails server webrick -e production'

# History
# -------

# Avoid duplicates
set -x HISTCONTROL  ignoredups
set -x HISTFILESIZE 8192

# Synchronize history
function save_history --on-event fish_preexec
    history --save
end

# ---------------------------------------------------------------------
# Functions

# Shortcut to play music from terminal
function mcplay
    mplayer -msgcolor -gapless-audio -shuffle -playlist "$HOME/Music/Playlists/$argv"
end

# Save output AND input to file
function catRsave
    R --no-save --quiet < $argv[1] > $argv[2].txt
end

# Word count of latex file
function catlatexwc
    detex $argv | wc -w
end

# SSL aliases to encrypt/decrypt files
function catcompress
    tar cz $argv | openssl enc -aes-256-cbc -e -salt > $argv.tar.gz.enc
end

function catencrypt
    openssl aes-256-cbc -e -in $argv -out $argv.enc
end

function catdecrypt
    openssl aes-256-cbc -d -in $argv.enc -out $argv
end

# Speech!
function catspeak
    pico2wave -l=en-GB -w=/tmp/__temppico__.wav "$argv"
    aplay /tmp/__temppico__.wav
    rm /tmp/__temppico__.wav
end

function say
    pico2wave -l=en-GB -w=/tmp/__temppico__.wav "$argv"
    aplay /tmp/__temppico__.wav
    rm /tmp/__temppico__.wav
end

# NFS
function catnfs
    if "$argv" == "on"
        sudo mount -t nfs 192.168.1.3:/videos /home/mauricio/Videos
    else
        sudo umount /home/mauricio/Videos
    end
end
