import sys,time

def animatedtext(text):
    message = text
    def animation(message):
        for char in message:
            sys.stdout.write(char)
            sys.stdout.flush()
            time.sleep(0.1)
    animation(message + "\n" )

def animatedtextfile(file):
    message = open(file, "r")
    def animation(message):
        for char in message:
            sys.stdout.write(char)
            sys.stdout.flush()
            time.sleep(0.1)
    animation(message + "\n")

    from itertools import cycle
    from shutil import get_terminal_size
    from threading import Thread
    from time import sleep




# if __name__ == "__main__":
#     with Loader("Loading with context manager..."):
#         for i in range(10):
#             sleep(0.25)

#     loader = Loader("Loading with object...", "That was fast!", 0.05).start()
#     for i in range(10):
#         sleep(0.25)
#     loader.stop