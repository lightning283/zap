import os
if os.path.isfile("/bin/pacman") or os.path.isfile("/bin/apt"):
    p = "linux"
if os.path.isfile("/system/build.prop"):
    p = "android"
if os.path.isdir("/windows"):
    p = "windows"
platform = p

import getpass
user = getpass.getuser()