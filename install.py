import os,shutil
from assets.utils import platform , user

from pathlib import Path
home = str(Path.home())
print(home)

if platform == "linux":
    shutil.copytree(r"../zap" , rf"/home/{user}/Desktop/zap")

if platform == "win":
    shutil.copytree(r"../zap", home)