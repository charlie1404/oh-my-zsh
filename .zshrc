setopt COMBINING_CHARS           # Combine zero-length punctuation characters (accents) with the base character.
setopt INTERACTIVE_COMMENTS      # Enable comments in interactive shell.
setopt RC_QUOTES                 # Allow 'Henry''s Garage' instead of 'Henry'\''s Garage'.
setopt LONG_LIST_JOBS            # List jobs in the long format by default.
setopt AUTO_RESUME               # Attempt to resume existing job before creating a new process.
setopt NOTIFY                    # Report status of background jobs immediately.
setopt COMPLETE_IN_WORD          # Complete from both ends of a word.
setopt ALWAYS_TO_END             # Move cursor to the end of a completed word.
setopt PATH_DIRS                 # Perform path search even on command names with slashes.
setopt AUTO_MENU                 # Show completion menu on a successive tab press.
setopt AUTO_LIST                 # Automatically list choices on ambiguous completion.
setopt AUTO_PARAM_SLASH          # If completed parameter is a directory, add a trailing slash.
setopt EXTENDED_GLOB             # Needed for file modification glob modifiers with compinit

unsetopt MENU_COMPLETE           # Do not autoselect the first completion entry.
unsetopt FLOW_CONTROL            # Disable start/stop characters in shell editor.
unsetopt MAIL_WARNING            # Don't print a warning message if a mail file has been accessed.
unsetopt BG_NICE                 # Don't run all background jobs at a lower priority.
unsetopt HUP                     # Don't kill jobs on shell exit.
unsetopt CHECK_JOBS              # Don't report on jobs when shell exit.


export ZSH="$HOME/.oh-my-zsh"
export TERM="xterm-256color"
export EDITOR="nano"
export VISUAL="nano"
export ZSH_PLUGINS_ALIAS_TIPS_TEXT="Alias tip: "
export ZSH_PLUGINS_ALIAS_TIPS_EXCLUDES="_"
export LESS='-F -g -i -M -R -S -w -X -z-4'
export NODE_PATH=$NODE_PATH:$HOME/.config/yarn/global/node_modules
export PATH=$HOME/bin:/usr/local/bin:$PATH
export LC_ALL=en_US.UTF-8


plugins=(
  git
  history
  colored-man-pages
  alias-tips
  common-aliases
  zsh-autosuggestions
  zsh-completions
  zsh-syntax-highlighting
)
CASE_SENSITIVE="true"
ZSH_THEME="spaceship"
ENABLE_CORRECTION="true"
autoload -U compinit && compinit


source $ZSH/oh-my-zsh.sh
source ~/.fzf.zsh
source "${ZSH:-$HOME}/alias.sh"
source "${ZSH:-$HOME}/secret/env.sh"
# source "$HOME/.nvm/nvm.sh"
source "${ZSH:-$HOME}/spaceship.zsh"

ZSH_HIGHLIGHT_HIGHLIGHTERS=(main pattern brackets line cursor root)
ZSH_HIGHLIGHT_PATTERNS=('rm -rf *' 'fg=white,bold,bg=red')

. ${ZSH:-$HOME}/z.sh

# DISABLE_AUTO_UPDATE="true" # Uncomment the following line to disable bi-weekly auto-update checks.
# export UPDATE_ZSH_DAYS=30 # Uncomment the following line to change how often to auto-update (in days).
# DISABLE_MAGIC_FUNCTIONS=true # Uncomment the following line if pasting URLs and other text is messed up.
# ZSH_CUSTOM=/path/to/new-custom-folder # Would you like to use another custom folder than $ZSH/custom?
