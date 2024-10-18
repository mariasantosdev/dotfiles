#!/bin/bash
ln -fns $PWD/zshrc $HOME/.zshrc
ln -fns $PWD/alias $HOME/.alias
sudo cp $PWD/my.cnf /etc/mysql/mysql.conf.d/custom.cnf && sudo chmod 644 /etc/mysql/mysql.conf.d/custom.cnf
