import os
if os.path.isdir("/usr/"):
    p = "linux"
if os.path.isdir("/sdcard/"):
    p = "android"

platform = p