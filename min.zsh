# Git status symbols
ZSH_THEME_GIT_PROMPT_PREFIX="%F{242}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%f "
ZSH_THEME_GIT_PROMPT_DIRTY="±"

# Prompt symbol
min_status() {
  echo -n "%(?.%F{green}.%F{red})➜%f  "
}

# Username
min_user() {
  if [[ $USER == 'root' ]]; then
    echo -n "%F{red}"
  else
    echo -n "%F{yellow}"
  fi

  echo -n "%n"
}

# Username and ssh host
min_host() {
  if [[ -n $SSH_CONNECTION ]]; then
    echo -n "$(min_user)@%m%f "
  elif [[ $LOGNAME != $USER ]] || [[ $USER == 'root' ]]; then
    echo -n "$(min_user)%f "
  fi
}

# Current directory
min_current_dir() {
  echo -n "%B%F{grey}%.%f%b "
}

# Git status
min_git_status() {
  echo -n "$(git_prompt_status)$(git_prompt_info)"
}

# Compose prompt
PROMPT='$(min_status)$(min_host)$(min_current_dir)$(min_git_status)'
