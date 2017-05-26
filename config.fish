# ---------------------------------------------------------------------
# Basics

set -x PARINIT rTbgqR\ B\=.\,\?_A_a\ Q\=_s\>\|

# Synchronize history
function save_history --on-event fish_preexec
    history --save
end

# Some color in your life
alias ls   'ls --color=auto'
alias dir  'dir --color=auto'
alias vdir 'vdir --color=auto'

# grep
alias grep  'grep --color=auto'
alias fgrep 'fgrep --color=auto'
alias egrep 'egrep --color=auto'

# some more ls aliases
alias ll 'ls -alFh'
alias la 'ls -A'
# alias l  'ls -CF'
alias l  'ls -lhF'

# Aliases
# -------

alias mssh  'ssh -i ~/.ssh/id_rsanp -Y'
alias kvim  'konsole --profile "vim" -e nvim &'
alias def   'sdcv'
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
alias catedit      'vim'
alias catunpack    'unp'
alias catsync      'rsync -arhlvv --progress --update'
alias catstarwars  'telnet towel.blinkenlights.nl'
alias catup        'xdotool key XF86MonBrightnessUp'
alias catdown      'xdotool key XF86MonBrightnessDown'
alias catbattery   'upower -i /org/freedesktop/UPower/devices/battery_BAT0'
alias catsweave    'R CMD Sweave --pdf'
alias catcopy      'xsel --clipboard --input'
alias catpaste     'xsel --clipboard --output'
alias catshred     'shred -zuv'
alias catborg      'borg create --stats --progress --verbose --compression lz4'

# ---------------------------------------------------------------------
# Functions

# Word count of latex file
function catlatexwc
    detex $argv | wc -w
end
