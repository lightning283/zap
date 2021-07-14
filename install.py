import os,shutil
from zap_home.assets.utils import platform , user , Loader
from time import sleep

from pathlib import Path
home = str(Path.home())

if platform == "linux":
    with Loader("Copying Files"):
        sleep(1)
        try:
            shutil.rmtree(f"{home}/zap")
            os.remove("/bin/zap")
        except FileNotFoundError:
            pass
        shutil.copytree(r"zap_home/" , rf"{home}/zap")
        os.system("sudo ln -s zap_home/zap /bin/ && sudo chmod +x /bin/zap")
        
elif platform == "win":
    with Loader("Copying Files"):
        sleep(1)
        try:
            shutil.rmtree(f"{home}/zap")
        except FileNotFoundError:
            pass
        shutil.copytree(r"zap_home/" , rf"{home}/zap")
