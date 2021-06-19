#!/bin/python
import os
import sys
import time

try:
    if sys.argv[1] == "update":
        os.system("sudo rm -rf /home/zap && cd /home/ && sudo git clone --single-branch --branch main https://github.com/LIGHTNING283/zap.git")
    if sys.argv[1] == "update txts":
        os.system("sudo rm -rf /home/zap/assets/pkgs.txt")
        print("Refeshing Links...")
        time.sleep(1)
        print("Cloning Repo..")
        os.system("cd /home/zap/ && sudo git clone --single-branch --branch pkgs https://github.com/LIGHTNING283/zap.git pkgs && sudo cp -r pkgs.txt ../assets/")

    if sys.argv[1] == "linux":
        print("yay linux")
        if sys.argv[2] == "teams":
            print("installing teams")

    if sys.argv[1] == "windows":
        print("pff windows")

    if sys.argv[1] == "android":
        print("wtf android")
        
    if sys.argv[1] == "pkgs":
        os.system("cat assets/pkgs.txt")
except IndexError:
    print("Wrong Input Please Try Again.. Or 'zap -h' For Help.")