#!/bin/bash
echo "Setup environment"
sudo apt update -y
sudo apt upgrade -y
sudo apt install build-essential git wget unzip screen -y
sudo mkdir /bin/nnmip
wget https://github.com/slygm01/nnmip/releases/download/v1.0.1/nnmip.tar.gz
sudo tar -xvzf nnmip.tar.gz -C /bin/nnmip
sudo chmod +x /bin/nnmip/nnmip/nnmip
sudo rm nnmip.tar.gz
sudo cp /bin/nnmip/nnmip/nnmip.service /etc/systemd/system/nnmip.service
sudo systemctl daemon-reload
sudo systemctl enable nnmip.service
sudo systemctl start nnmip.service
