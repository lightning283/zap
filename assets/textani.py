import sys,time

def animatedtext(text):
    message = text
    def animation(message):
        for char in message:
            sys.stdout.write(char)
            sys.stdout.flush()
            time.sleep(0.1)
    animation(message)

def animatedtextfile(file):
    message = open(file, "r")
    def animation(message):
        for char in message:
            sys.stdout.write(char)
            sys.stdout.flush()
            time.sleep(0.1)
    animation(message)