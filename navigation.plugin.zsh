# BONUS
alias ff='fastfetch'
alias of='onefetch'

# ────────────────────────────────────────────────────────────
# 🔧 Shell Options - Smarter Navigation
# ────────────────────────────────────────────────────────────

setopt auto_cd             # Auto change dir without `cd`
setopt auto_pushd          # Push prev dir to stack on `cd`
setopt pushd_ignore_dups   # No duplicate dirs in stack
setopt pushdminus          # Reverse pushd behavior

# ────────────────────────────────────────────────────────────
# 📂 Navigation & Zoxide
# ────────────────────────────────────────────────────────────

alias cd="z"               # Use Zoxide for quick jumps
alias cdi="cd -"           # Go to last dir

# Shortcuts to move up levels
alias 0="cd ~"
alias -g .2="cd ../.."     
alias -g .3="cd ../../.."  
alias -g .4="cd ../../../.."  
alias -g .5="cd ../../../../.."  

# Quick access to recent dirs
alias 1='cd -1'  
alias 2='cd -2'  
alias 3='cd -3'  
alias 4='cd -4'  
alias 5='cd -5'  
alias 6='cd -6'  
alias 7='cd -7'  
alias 8='cd -8'  
alias 9='cd -9'  

# List recent directories
function d () {  
  [[ -n $1 ]] && dirs "$@" || dirs -v | head -n 10
}
compdef _dirs d  

# ────────────────────────────────────────────────────────────
# 📁 Directory Handling
# ────────────────────────────────────────────────────────────

mkcd() { mkdir -p "$1" && cd "$1"; }  # Create & enter dir

# Create, clone, or extract based on input
take() {
  [[ -z "$1" ]] && echo "Usage: take <dir|URL>" && return 1
  case "$1" in
    *github.com/* | *gitlab.com/* | *bitbucket.org/*)
      repo_url="${1%.git}.git" 
      git clone "$repo_url" && cd "$(basename "$repo_url" .git)"
      ;;
    *.tar.gz|*.tgz) filename=$(basename "$1")
      wget "$1" -O "$filename" && tar -xvzf "$filename" && cd "$(tar -tf "$filename" | head -1 | cut -d/ -f1)"
      ;;
    *.tar.bz2|*.tbz2) filename=$(basename "$1")
      wget "$1" -O "$filename" && tar -xvjf "$filename" && cd "$(tar -tf "$filename" | head -1 | cut -d/ -f1)"
      ;;
    *.tar.xz|*.txz) filename=$(basename "$1")
      wget "$1" -O "$filename" && tar -xvJf "$filename" && cd "$(tar -tf "$filename" | head -1 | cut -d/ -f1)"
      ;;
    *) mkcd "$1" ;;
  esac
}

# ────────────────────────────────────────────────────────────
# ⚙️ Aliases - Improved Commands
# ────────────────────────────────────────────────────────────

alias md='mkdir -pv'         # Create dirs w/ output
alias rd='rm -r -I'            # Remove dir 
alias mkdir="mkdir -pv"      
alias cp="cp -v"             # Verbose copy
alias mv="mv -iv"            # Interactive move
alias rm="rm -i"             # Confirm on multi-file delete
alias lg="lazygit"           
alias lzd="lazydocker"       
alias cls="clear"            

# ────────────────────────────────────────────────────────────
# 🔍 Search Tools
# ────────────────────────────────────────────────────────────

alias fdf="fd --type=f --hidden"  # Find files
alias fdd="fd --type=d --hidden"  # Find dirs
alias rgt="rg --type"             # Search by type
