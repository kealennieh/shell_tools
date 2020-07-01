### Introduction
This repository contains some useful tools to increase efficiency and productivity. 


#### Requirements 
* ubuntu


#### How to use 
1. clone this repository. 
```
git clone git@github.com:kealennieh/tools.git
```

2. add the repository into your system path. 
```
vim ~/.bashrc 
export PATH=$PATH:/home/xxx/shell_tools
source ~/.bashrc
```

3. enjoy the tools.


#### Usage 
1. copy the previous files into target folder.
```
sheCopyHead.sh -n <number> -d <target_folder>

eg: sheCopyHead.sh -n 10 -d ~/work
```

2. copy the last files into target folder.
```
sheCopyTail.sh

eg: sheCopyHead.sh -n 10 -d ~/work
```

3. display the size of current folder.
```
sheDu0.sh

eg: sheDuo.sh
```

4. display the size of all the folders in current folder.
```
sheDu1.sh

eg: sheDu1.sh
```

5. erase the duplicate row in file.
this tool is used to git rid of the duplicate row in file.
```
sheEraseDuplicate.sh -f <file> -t <target>

eg: sheEraseDuplicate.sh -f test.txt -t target.txt
```

6. find the string in files in folder.
```
sheFindStrInFile.sh -d <dir> -s <str>

eg: sheFindStrInFile.sh -d . -s test
```

7. find the str in files in current folder.
```
sheGrepLocal.sh -s <string>

eg: sheGrepLocal.sh -s error
```

8. kill the process started by python in cuda.
```
sheKillPythonInCuda.sh -i <number>

eg: sheKillPythonInCuda.sh -i 0
```

9. kill zombie process
```
sheKillZombie.sh
```

10. display the previous files, which are sorted by time.
```
sheLsTimeHead.sh
```

11. display the memory
```
shePsMem.sh
```

12. display the zombie process
```
shePsZombie.sh
```

13. remove the files by time and store the latest file. 
this tool is used to remove the previous logger files in tensorboard.
```
sheRemoveByTime.sh
```

14. copy files increamentally.
this tool is quite useful when we copy large files. 
```
sheRsync.sh -s <src_folder> -d <destination_folder>

eg: sheRsync.sh -s test -d ~/work
```

15. start a http server in current folder.
```
sheSimpleServer.sh
```

16. copy the file/folder to the target folder of another server by scp.
```
sheToRemote.sh -f <file>
sheToRemote.sh -d <dir> 

eg: sheToRemote.sh -f test.txt
```

17. display the panel of nvidia
```
sheWatchNvidia.sh
```

18. check the number of row in file.
this tool is used to check the file when we merge various file into one.
```
sheWcFile.sh -f <file>

eg: sheWcFile.sh -f test.txt
```

19. enter the latest folder.
```
sheCdLatestFolder.sh
```

#### Todo 
- [x] remove the files by time and store the latest file.


#### Citation 
cite yourself~ 
