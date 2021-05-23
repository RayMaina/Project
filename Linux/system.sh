#!/bin/bash
free -m >> /home/sysadmin/backups/freemem/free_mem.txt
du -h >> /home/sysadmin/backups/diskuse/disk_usage.txt
lsof >> /home/sysadmin/backups/openlist/open_list.txt
df -h >> /home/syadmin/bacckups/freedisk/free_disk.txt
