_pla_get_targets_list () {
   pla 2> /dev/stdout | sed "1,/Valid targets are:/d" | awk '/^    / { print $1 }'
}

_pla () {
   compadd `_pla_get_targets_list`
}

compdef _pla 'pla'
