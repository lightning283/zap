#!/bin/python
import os
import sys
import time

try:
    if sys.argv[1] == "update":
        print("""
        1.Update Zap
        2.Update MarkDown Files.. (Pkgs and Help)
        """)
        usr_input = input("Enter Choice: ")
        if usr_input == "1":
            os.system("sudo rm -rf /home/zap && cd /home/ && sudo git clone --single-branch --branch main https://github.com/LIGHTNING283/zap.git")
            os.system("sudo chmod +x /bin/zap")
        if usr_input == "2":
            os.system("sudo rm -rf /home/zap/assets/pkgs.txt")
            time.sleep(1)
            print("Cloning Repo..")
            os.system("cd /home/zap/ && sudo git clone --single-branch --branch pkgs https://github.com/LIGHTNING283/zap.git pkgs && sudo cp -r pkgs.txt ../assets/")
        else:
            print("Wrong Input")

    if sys.argv[1] == "linux":
        print("yay linux")

    if sys.argv[1] == "android":
        print("wtf android")
        
    if sys.argv[1] == "pkgs":
        os.system("lolcat assets/pkgs.md")

    if sys.argv[1] == "-h" or sys.argv[1] == "help":
        os.system("lolcat assets/help.md")
    if sys.argv[1] == "-v" or sys.argv[1] == "version":
        print("v1.4")
except IndexError:
    print("Wrong Input Please Try Again.. Or 'zap -h' For Help.")