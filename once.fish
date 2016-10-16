#----------------------------------------------------------------------
# Setting each of these locally at startup adds is way too slow

# Colors
# ------

set -U fish_color_user    ffffff
set -U fish_color_host    ffffff
set -U fish_color_param   e7cdf4
set -U fish_color_command 99c6ff
# set fish_color_param   7aa6da
# set fish_color_command c397d8

# Git
# ---

# fish git prompt
set -U __fish_git_prompt_showdirtystate 'yes'
set -U __fish_git_prompt_showstashstate 'yes'
set -U __fish_git_prompt_showupstream   'yes'
set -U __fish_git_prompt_color_branch   green

# Status Chars
set -U __fish_git_prompt_char_dirtystate  '✗'
set -U __fish_git_prompt_char_stagedstate '→'
set -U __fish_git_prompt_char_stashstate  '↩'
set -U __fish_git_prompt_char_upstream_ahead  '↑'
set -U __fish_git_prompt_char_upstream_behind '↓'

# Path to projects
# ----------------

set -U doyle    /home/mauricio/Documents/projects/ra/doyle/projects
set -U install  /home/mauricio/Documents/code/lib/install-arch.md
set -U projects /home/mauricio/Documents/projects
set -U dotvim   /home/mauricio/Documents/code/dotvim
set -U mbin     /home/mauricio/Documents/code/bin
set -U mlib     /home/mauricio/Documents/code/lib

set -U gems     /home/mauricio/.gem/ruby/2.3.0/bin
set -U rootgems /root/.gem/ruby/2.3.0/bin

# set -U fish_user_paths $mbin $gems $fish_user_paths
set -U fish_user_paths $mbin $fish_user_paths
npm config set prefix '~/.npm-global'

# History
# -------

set -U HISTCONTROL  ignoredups
set -U HISTFILESIZE 8192
