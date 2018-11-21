dir=$(dirname "$0")
conf_file="$dir/tmux.conf"
current_conf_file="$HOME/.tmux.conf"

cp "$conf_file" "$current_conf_file"

rm -rf $HOME/.tmux/plugins/tpm
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
export TMUX_PLUGIN_MANAGER_PATH=$HOME/.tmux/plugins
~/.tmux/plugins/tpm/bin/install_plugins
~/.tmux/plugins/tpm/bin/update_plugins all
~/.tmux/plugins/tpm/bin/clean_plugins

