#!/bin/bash

# Update system and install Go

sudo apt update
sudo apt install tmux
sudo apt install build-essential 
sudo apt install make 
wget https://go.dev/dl/go1.22.1.linux-amd64.tar.gz
sudo su -c "rm -rf /usr/local/go && tar -C /usr/local -xzf go1.22.1.linux-amd64.tar.gz"
export PATH=$PATH:/usr/local/go/bin

sudo apt install python3-venv -y


mkdir $HOME/nimble && cd $HOME/nimble
git clone https://github.com/nimble-technology/nimble-miner-public.git
cd nimble-miner-public

git pull
make install


tmux new -s nimble
source ./nimenv_localminers/bin/activate

echo "Enter sub wallet address :"
read sub

make run test addr=$sub
