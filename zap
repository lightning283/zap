#!/usr/bin/python
from assets.links import *
import os
import sys
import getpass
user = getpass.getuser()

homedir = f"/home/{user}/.config/zap/"
homedir = ""

try:
    if sys.argv[1] == "update":
        os.system(f"cd ~/.cache/zap/ && gitclone {update_link} && cd foldername && bash install.sh")
        
    if sys.argv[1] == "linux":
        print("yay linux")
        if sys.argv[2] == "teams":
            print("installing teams")

    if sys.argv[1] == "windows":
        print("pff windows")

    if sys.argv[1] == "android":
        print("wtf android")
    if sys.argv[1] == "pkgs":
        os.system(f"cat {homedir}assets/pkgs.txt")
except IndexError:
    print("Wrong Input Please Try Again.. Or 'zap -h' For Help.")