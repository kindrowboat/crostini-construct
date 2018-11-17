sudo apt install -y libxslt1-dev

cd /tmp
wget -O dropbox.deb https://www.dropbox.com/download?dl=packages/ubuntu/dropbox_2015.10.28_amd64.deb
sudo apt install -y ./dropbox.deb

mkdir -p $HOME/.config/systemd/user/

echo "[Unit]
Description=Dropbox as a user service
After=local-fs.target network.target

[Service]
Type=simple
ExecStart=%h/.dropbox-dist/dropboxd
Restart=on-failure
RestartSec=1
# Note: don't set these in user mode- they're already set, and
# systemd won't have permission to set them- killing your service before
# it starts
# User=%U
# Group=%U

[Install]
WantedBy=default.target" > ~/.config/systemd/user/dropbox.service
