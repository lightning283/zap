#!/bin/bash
sudo mkdir -p /home/
sudo cp ../zap /home/
sudo chmod +x /home/zap/zap
sudo ln /home/zap/zap /usr/bin/
echo "Done! Zap Installed/Updated Successfully"