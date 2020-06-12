# !/bin/bash

ps -A -ostat,ppid,pid,cmd | grep -e '^[zZ]'