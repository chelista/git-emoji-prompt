EMOJIS=($(cat ${rootdir}/themes/$theme))

RANDOM_EMOJI() {
  SELECTED_EMOJI=${EMOJIS[$RANDOM % ${#EMOJIS[@]}]}
  # Check if inside of a git repo
  if [[ $(git rev-parse --is-inside-work-tree 2>/dev/null) ]]; then
    echo "$SELECTED_EMOJI "
  else
    echo ''
  fi
}

BREAK() {
  if [[ $(git rev-parse --is-inside-work-tree 2>/dev/null) ]]; then
    printf '\n '
  fi
}
