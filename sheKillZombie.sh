# !/bin/bash
echo "zombies are : "
ps -A -ostat,ppid,pid,cmd | grep -e '^[zZ]'

ps -A -ostat,ppid,pid,cmd | grep -e '^[zZ]' | awk '{print $2}' | xargs -i kill -9 {}
echo "zombies are killed !"