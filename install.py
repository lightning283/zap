import os,shutil
from zap_home.assets.utils import platform , user , Loader
from time import sleep

from pathlib import Path
home = str(Path.home())

try:
    if platform == "linux":
        with Loader("Resolving Dependencies"):
            os.system("pip install pygenix")
        with Loader("Copying Files"):
            sleep(1)
            try:
                shutil.rmtree(f"{home}/zap")
                os.remove("/bin/zap")
            except FileNotFoundError:
                pass
            shutil.copytree(r"zap_home/" , rf"{home}/zap")
            shutil.copy2("zap_home/zap", "/bin/")
            os.system("sudo chmod +x /bin/zap")

    elif platform == "win":
        with Loader("Copying Files"):
            sleep(1)
            try:
                shutil.rmtree(f"{home}/zap")
            except FileNotFoundError:
                pass
            shutil.copytree(r"zap_home/" , rf"{home}/zap")
            os.system(f"""set PATH="%PATH%;{home}\zap\"""")
except PermissionError:
    print("Linux --> Run As Root")
    print("Windows --> Run As A Administrator")