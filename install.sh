#!/bin/bash
# Installing mysql apt config
curl https://dev.mysql.com/get/mysql-apt-config_0.8.33-1_all.deb -o /tmp/mysql-apt-config.deb
sudo dpkg -i /tmp/mysql-apt-config.deb
sudo apt update
sudo apt install $(cat $PWD/apt-packages) -y
[ "$SHELL" != "/bin/zsh" ] && chsh -s /bin/zsh && cp $HOME/.bash_history $HOME/.zsh_history
ls $HOME/.oh-my-zsh || sh -c "$(curl -fsSL https://install.ohmyz.sh/)"
$PWD/links.sh
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf && ~/.fzf/install
ls $HOME/.host-exclusive || touch $HOME/.host-exclusive
