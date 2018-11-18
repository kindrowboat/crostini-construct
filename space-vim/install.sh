dir="$( cd "$(dirname "$0")" ; pwd -P )"

git clone https://github.com/liuchengxu/space-vim.git ~/.space-vim
cd ~/.space-vim
make neovim

conf_file="$dir/spacevim"
current_conf_file="$HOME/.spacevim"

cp "$conf_file" "$current_conf_file"
