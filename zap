#!/bin/python
import os
import sys
import time
from assets.utils import platform

try:
    if sys.argv[1] == "update":
        print("""
        1.Update Zap
        2.Update MarkDown Files.. (Pkgs and Help)
        """)
        usr_input = input("Enter Choice: ")
        if usr_input == "1":
            if platform == "linux":
                print("Updating For Platform ==> "+ platform)
                os.system("rm -rf ~/zap && cd ~/ && git clone --single-branch --branch main https://github.com/LIGHTNING283/zap.git")
                os.system("chmod +x ~/zap/zap")
                if not os.path.isfile("/bin/zap"):
                    print("Linking Files...")
                    os.system("sudo ln -s ~/zap/zap /bin/")
                print("Successfully Updated")
            elif platform == "android":
                print("Updating For Platform ==> "+ platform)
                os.system("rm -rf /system/zap && cd /system/ && git clone --single-branch --branch main https://github.com/LIGHTNING283/zap.git")
                print("Successfully Updated")
        elif usr_input == "2":
            os.system("sudo rm -rf ~/zap/assets/*.md")
            time.sleep(1)
            print("Cloning Repo..")
            os.system("cd ~/zap/ && git clone --single-branch --branch md-files https://github.com/LIGHTNING283/zap.git md-files && cd md-files && cp -r *.md ../assets/")
        else:
            print("Wrong Input")

    if sys.argv[1] == "install":
        if platform == "linux":
            print("Platform ==> "+ platform)
            if sys.argv[2] == "pydown":
                print("Downloading Pydown From Github Servers..")
                os.system("cd ~/zap/packages/ && git clone --single-branch --branch linux-pydown https://github.com/LIGHTNING283/zap.git pydown && cd pydown && bash install.sh")
            elif sys.argv[2] == "lolcat":
                print("Downloading Lolcat From Github Servers..")
                os.system("cd ~/zap/packages/ && git clone --single-branch --branch lolcat https://github.com/LIGHTNING283/zap.git lolcat && cd lolcat && bash install.sh")
        elif platform == "android":
            print("Platform ==> "+ platform)
            if sys.argv[2] == "pydown":
                print("Downloading Pydown From Github Servers..")
                os.system("cd /system/zap/packages/ && git clone --single-branch --branch linux-pydown https://github.com/LIGHTNING283/zap.git pydown && cd pydown && sudo bash install.sh")
            elif sys.argv[2] == "lolcat":
                print("Downloading Lolcat From Github Servers..")
                os.system("cd /system/zap/packages/ && git clone --single-branch --branch lolcat https://github.com/LIGHTNING283/zap.git lolcat && cd lolcat && bash install.sh")
            elif sys.argv[2] == "needed-apks":
                print("Downloading From Github Servers..")
                os.system("cd /system/zap/packages/ && git clone --single-branch --branch needed-apks https://github.com/LIGHTNING283/zap.git needed-apks && cd needed-apks && bash install.sh")
        
    if sys.argv[1] == "uninstall":
        if platform == "linux":
            print("Platform ==> "+ platform)
            if sys.argv[2] == "pydown":
                os.system("bash ~/zap/packages/pydown/uninstall.sh")
            if sys.argv[2] == "lolcat":
                os.system("bash ~/zap/packages/lolcat/uninstall.sh")
        elif platform == "android":
            print("Platform ==> "+ platform)
            if sys.argv[2] == "pydown":
                os.system("bash /system/zap/packages/pydown/uninstall.sh")
            if sys.argv[2] == "pydown":
                os.system("bash /system/zap/packages/lolcat/uninstall.sh")
#####################################################################
    if sys.argv[1] == "pkgs":
        os.system("lolcat -a /home/zap/assets/pkgs.md")
    if sys.argv[1] == "-h" or sys.argv[1] == "help":
        os.system("lolcat -a /home/zap/assets/help.md")
    if sys.argv[1] == "-v" or sys.argv[1] == "version":
        print("v2.2")
#####################################################################
except IndexError:
    print("Wrong Input Please Try Again.. Or 'zap -h' For Help.")