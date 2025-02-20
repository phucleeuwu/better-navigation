# ────────────────────────────────────────────────────────────
#  Aliases - Minimal Yet Powerful
# ────────────────────────────────────────────────────────────
setopt auto_cd
setopt auto_pushd
setopt pushd_ignore_dups
setopt pushdminus

#  Navigation + Zoxide
alias cd="z"         # Zoxide  
alias cdi="cd -"      # Fast switch directories  
alias -g .2="cd ../.."
alias -g .3="cd ../../.."
alias -g .4="cd ../../../.."
alias -g .5="cd ../../../../.."

# Cd recent dirs (1, 2, 3, 4,... 9)
alias 1='cd -1'
alias 2='cd -2'
alias 3='cd -3'
alias 4='cd -4'
alias 5='cd -5'
alias 6='cd -6'
alias 7='cd -7'
alias 8='cd -8'
alias 9='cd -9'

function d () {  #list recent dirs
  if [[ -n $1 ]]; then
    dirs "$@"
  else
    dirs -v | head -n 10
  fi
}
compdef _dirs d

#  Command Enhancements

mkcd() {
  mkdir -p "$1" && cd "$1"  #mkdir + cd
}

take() {
  if [[ -z "$1" ]]; then
    echo "Usage: take <directory|URL>"
    return 1
  fi

  case "$1" in
    *github.com/* | *gitlab.com/* | *bitbucket.org/*)  # Detect Git hosting services
      repo_url="$1"
      [[ "$repo_url" != *.git ]] && repo_url+=".git"  # Append .git if missing
      git clone "$repo_url" && cd "$(basename "$repo_url" .git)"
      ;;
    
    *.tar.gz|*.tgz) # If argument is a .tar.gz file
      filename=$(basename "$1")
      wget "$1" -O "$filename" && tar -xvzf "$filename" && cd "$(tar -tf "$filename" | head -1 | cut -d/ -f1)"
      ;;
    
    *.tar.bz2|*.tbz2) # If argument is a .tar.bz2 file
      filename=$(basename "$1")
      wget "$1" -O "$filename" && tar -xvjf "$filename" && cd "$(tar -tf "$filename" | head -1 | cut -d/ -f1)"
      ;;
    
    *.tar.xz|*.txz) # If argument is a .tar.xz file
      filename=$(basename "$1")
      wget "$1" -O "$filename" && tar -xvJf "$filename" && cd "$(tar -tf "$filename" | head -1 | cut -d/ -f1)"
      ;;

    *) # Default behavior: create and enter directory (like mkcd)
      mkdir -p "$1" && cd "$1"
      ;;
  esac
}

alias md='mkdir -pv'
alias rd='rm -rf'
alias mkdir="mkdir -pv"  
# alias cat="bat"  # Modern `cat`
alias cp="cp -v"  
alias mv="mv -iv"  
alias rm="rm -I"  
alias lg="lazygit"  
alias lzd="lazydocker"  
alias cls="clear"  

#  Search Tools (fd + ripgrep)
alias fdf="fd --type=f --hidden"  # Find files  
alias fdd="fd --type=d --hidden"  # Find directories  
alias rgt="rg --type"  # search by file type, e.g., `rgt js "function"`  
