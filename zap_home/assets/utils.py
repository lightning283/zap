from itertools import cycle
from shutil import get_terminal_size
from threading import Thread
from time import sleep

class Loader:
    def __init__(self, desc="Loading...", end="Done!", timeout=0.1):
        self.desc = desc
        self.end = end
        self.timeout = timeout

        self._thread = Thread(target=self._animate, daemon=True)
        self.steps = ["⢿ ", "⣻ ", "⣽ ", "⣾ ", "⣷ ", "⣯ ", "⣟ ", "⡿ "]
        self.done = False

    def start(self):
        self._thread.start()
        return self

    def _animate(self):
        for c in cycle(self.steps):
            if self.done:
                break
            print(f"\r{self.desc} {c}", flush=False, end="")
            sleep(self.timeout)

    def __enter__(self):
        self.start()

    def stop(self):
        self.done = True
        cols = get_terminal_size((80, 20)).columns
        print("\r" + " " * cols, end="", flush=False)
        print(f"\r{self.end}", flush=False)

    def __exit__(self, exc_type, exc_value, tb):
        self.stop()


import os
import getpass

if os.path.isfile("/bin/pacman") or os.path.isfile("/bin/apt"):
    p = "linux"
if os.path.isfile("/system/build.prop"):
    p = "android"
if os.path.isdir("c:"):
    p = "win"
if os.path.isfile("/bin/yay"):
    s = "arch"
if os.path.isfile("/bin/apt"):
    s = "debian"
platform = p
#splatform = s #specific Platform

from getpass import getuser
user = getuser()
