#!/bin/bash

echo '0 0 * * 0 "sudo apt-get update > /var/log/update-$(date +%Y%m%d).log; sudo apt-get upgrade >> /var/log/update-$(date +%Y%m%d).log"' >> /var/spool/cron/crontabs/root #every Sunday ta 00:00 system updating and create log-file

#'0 0 * * 0' - command for adding some script to cron and running once a week
