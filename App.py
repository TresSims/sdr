import os

from threading import Thread, Lock
import time
import random

# Use each line of the keys file as a license to install to this license server
with open('./keys', 'r') as f:
    line = reader.readLine()
    while line != '':
        os.cmd(f"/opt/hfs18.5/houdini/sbin/sesictrl install {line}")
        line = reader.readLine()

# Tail the log or something here idk
