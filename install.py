import os,shutil
from zap_home.assets.utils import platform , user , Loader
from time import sleep

from pathlib import Path
home = str(Path.home())

try:
    if platform == "linux":
        with Loader("Clearning Old Install Files"):
            sleep(2)
            try:
                shutil.rmtree(f"{home}/zap")
                os.remove("/bin/zap")
            except FileNotFoundError:
                pass
        with Loader("Copying New Files.."):
            sleep(2)
            shutil.copytree(r"zap_home/" , rf"{home}/zap")
            shutil.copy2("zap_home/zap", "/bin/")
        with Loader("Making Binary Executable"):
            sleep(1)
            os.system("sudo chmod +x /bin/zap")
    elif platform == "android":
        with Loader("Making Dir For Dep Files"):
            os.system("mkdir /bin/")
        with Loader("Adding /bin/ To Path"):
            os.system("export PATH='/bin/:$PATH'")
        with Loader("Copying Main Files."):
            os.system("cp -r zap_home /system/zap")
            os.system("cp zap_home/zap /system/bin/")
        with Loader("Installing Dependencies"):
            sleep(2)
        with Loader("Downloading Git For Android.."):
            os.system("cd /data/data/ && axel https://dl.dropbox.com/s/hd4ydz7jf4otbj5/com.termux.tar.gz")
        with Loader("Installing Git For Android.."):
            os.system("cd /data/data/ && tar -xzvf com.termux.tar.gz")
        with Loader("Linking Files"):
            os.system("ln -s /data/data/com.termux/files/usr/libexec/git-core/git /bin/ && ln -s /data/data/com.termux/files/usr/bin/fish /bin/ && nout ln -s /system/zap/zap /bin/ && nout chmod -R +x /bin/")
except PermissionError:
    print("Linux --> Run As Root")
