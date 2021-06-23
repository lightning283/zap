#!/bin/python
import os
import sys
from assets.textani import animatedtext, animatedtextfile
from assets.modules.utils import platform,user

try:
    if sys.argv[1] == "-u" or sys.argv[1] == "update":
        animatedtext("1.Update Zap \n")
        animatedtext("2.Update Md-Files (pkgs and help)\n")
        usr_input = input("Enter Choice: ")
        if usr_input == "1":
            if platform == "linux":
                animatedtext("Updating For Platform ==> "+ platform)
                os.system("rm -rf ~/zap && cd ~/ && git clone --single-branch --branch main https://github.com/LIGHTNING283/zap.git")
                os.system("chmod +x ~/zap/zap")
                if not os.path.isfile("/bin/zap"):
                    animatedtext("Linking Files...")
                    os.system("sudo ln -s ~/zap/zap /bin/")
                animatedtext("Successfully Updated")
            elif platform == "android":
                print("Updating For Platform ==> "+ platform)
                os.system("rm -rf /system/zap && cd /system/ && git clone --single-branch --branch main https://github.com/LIGHTNING283/zap.git")
                animatedtext("Successfully Updated")
        elif usr_input == "2":
            if platform == "linux":
                os.system("rm -rf ~/zap/assets/*.md")
                os.system("cd ~/zap/ && git clone --single-branch --branch md-files https://github.com/LIGHTNING283/zap.git md-files && cd md-files && cp -r *.md ../assets/ && cd .. && rm -rf md-files")
            elif platform == "android":
                os.system("rm -rf /system/zap/assets/*.md")
                os.system("cd /system/zap/ && git clone --single-branch --branch md-files https://github.com/LIGHTNING283/zap.git md-files && cd md-files && cp -r *.md ../assets/ && cd .. && rm -rf md-files")
        else:
            animatedtext("Invalid Option Please Try Again...")

    if sys.argv[1] == "-i" or sys.argv[1] == "install":
        if platform == "linux":
            animatedtext("Platform ==> "+ platform)
            if sys.argv[2] == "pydown":
                animatedtext("Downloading Pydown From Github Servers..")
                os.system("cd ~/zap/packages/ && git clone --single-branch --branch linux-pydown https://github.com/LIGHTNING283/zap.git pydown && cd pydown && bash install.sh")
            elif sys.argv[2] == "lolcat":
                animatedtext("Downloading Lolcat From Github Servers..")
                os.system("cd ~/zap/packages/ && git clone --single-branch --branch lolcat https://github.com/LIGHTNING283/zap.git lolcat && cd lolcat && bash install.sh")
        elif platform == "android":
            animatedtext("Platform ==> "+ platform)
            if sys.argv[2] == "pydown":
                animatedtext("Downloading Pydown From Github Servers..")
                os.system("cd /system/zap/packages/ && git clone --single-branch --branch linux-pydown https://github.com/LIGHTNING283/zap.git pydown && cd pydown && sudo bash install.sh")
            elif sys.argv[2] == "lolcat":
                animatedtext("Downloading Lolcat From Github Servers..")
                os.system("cd /system/zap/packages/ && git clone --single-branch --branch lolcat https://github.com/LIGHTNING283/zap.git lolcat && cd lolcat && bash install.sh")
            elif sys.argv[2] == "needed-apks":
                animatedtext("Downloading From Github Servers..")
                os.system("cd /system/zap/packages/ && git clone --single-branch --branch needed-apks https://github.com/LIGHTNING283/zap.git needed-apks && cd needed-apks && bash install.sh")
        
    if sys.argv[1] == "uninstall" or sys.argv[1] == "-r":
        if platform == "linux":
            print("Platform ==> "+ platform)
            if sys.argv[2] == "pydown":
                animatedtext("Starting Uninstall Now...")
                os.system("bash ~/zap/packages/pydown/uninstall.sh")
            if sys.argv[2] == "lolcat":
                animatedtext("Starting Uninstall Now...")
                os.system("bash ~/zap/packages/lolcat/uninstall.sh")
        elif platform == "android":
            print("Platform ==> "+ platform)
            animatedtext("Starting Uninstall Now...")
            if sys.argv[2] == "lolcat":
                os.system("bash /system/zap/packages/lolcat/uninstall.sh")
            if sys.argv[2] == "needed-apks":
                animatedtext("Starting Uninstall Now...")
                os.system("bash /system/zap/packages/needed-apks/uninstall.sh")
#####################################################################
    if sys.argv[1] == "pkgs":
        if platform == "linux":
            animatedtextfile(f"/home/{user}/zap/assets/pkgs.md")
        elif platform == "android":
            animatedtextfile("/system/zap/assets/pkgs.md")
    if sys.argv[1] == "-h" or sys.argv[1] == "help":
        if platform == "linux":
            animatedtextfile(f"/home/{user}/zap/assets/help.md")
        elif platform == "android":
            animatedtextfile("/system/zap/assets/help.md")
    if sys.argv[1] == "-v" or sys.argv[1] == "version":
        print("v2.7")
    if sys.argv[1] == "-p":
        animatedtext("platform ====>" + platform)
#####################################################################
except IndexError:
    animatedtext("Wrong Input Please Try Again.. Or 'zap -h' For Help.")