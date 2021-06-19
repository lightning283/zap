#!/bin/python
import os
import sys
import time

try:
    if sys.argv[1] == "update":
        os.system("sudo rm -rf /home/zap && git clone https://github.com/LIGHTNING283/zap.git")
        if sys.argv[2] == "pkgs":
            os.system("sudo rm -rf /home/zap/assets/pkgs.txt")
            print("Refeshing Links...")
            time.sleep(1)
            print("Cloning Repo..")
            os.system("cd /home/zap/ && git clone -b pkgs https://github.com/LIGHTNING283/zap.git pkgs && cp pkgs/pkgs.txt ../assets/")

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