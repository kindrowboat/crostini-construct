dir=$(dirname "$0")
conf_file="$dir/tmux.conf"
current_conf_file="$HOME/.tmux.conf"
cmp -s "$conf_file" "$current_conf_file"
