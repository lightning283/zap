#!/bin/bash
sudo mkdir -p /home/
sudo cp -r ../zap /home/
sudo chmod +x /home/zap/zap
sudo ln -s /home/zap/zap /usr/bin/
echo "Done! Zap Installed/Updated Successfully"