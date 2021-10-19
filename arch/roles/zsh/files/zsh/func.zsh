function weather  {
  curl wttr.in/$1
}

function mvws {
  i3-msg "[workspace=\"$1\"]" move workspace to output primary
}
