#!/bin/bash

#open ports
echo "Open Ports:"
ss -tuln | awk 'NR>1 {print $1, $5}'

#logged in users
echo -e "\nLogged-in Users:"
who | awk '{print $1, $2, $3}'

#chech ssh
echo -e "\nEstablished SSH Connections:"
ss -tnp | grep sshd | awk '{print $5, $6}'

#system logs
echo -e "\nRecent System Logs:"
dmesg | tail -n 10
tail -n 10 /var/log/messages 2>/dev/null
echo -e "\nLast 10 Lines of /var/log/syslog:"
tail -n 10 /var/log/syslog 2>/dev/null
