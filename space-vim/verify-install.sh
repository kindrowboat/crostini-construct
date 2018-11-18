dir=$(dirname "$0")
conf_file="$dir/spacevim"
current_conf_file="$HOME/.spacevim"

cmp -s "$conf_file" "$current_conf_file"
