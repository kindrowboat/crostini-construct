cd /tmp
wget https://github.com/neovim/neovim/releases/download/v0.3.1/nvim.appimage
chmod +x nvim.appimage
./nvim.appimage --appimage-extract
sudo mv squashfs-root /opt/nvim
sudo ln -s /opt/nvim/usr/bin/nvim /usr/local/bin/nvim
