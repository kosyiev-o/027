#!/bin/bash

echo "0 0 * * 0 sudo apt-get update > /var/log/update-$(date +%Y%m%d).log; sudo apt-get upgrade >> /var/log/update-$(date +%Y%m%d).log" >> /var/spool/cron/crontabs/root #every Sunday ta 00:00 system updating and create log-file
#or we can use other way to do it
#At first, create new command "sysupg". This command run upgrading and create log-file
#echo 'alias sysupg="sudo apt-get update > /var/log/update-$(date +%Y%m%d).log; sudo apt-get upgrade >> /var/log/update-$(date +%Y%m%d).log"' >> ~/.bashrc
#And add shedule to cron
#echo '0 0 * * 0 sysupg' >> /var/spool/cron/crontabs/root


#'0 0 * * 0' - command for adding some script to cron and running once a week
