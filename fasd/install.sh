tmp_dir=$(mktemp -d)
cd $tmp_dir
wget -O fasd.tar.gz https://github.com/clvv/fasd/archive/1.0.1.tar.gz
tar -xzf fasd.tar.gz
cd fasd*/
sudo make install
