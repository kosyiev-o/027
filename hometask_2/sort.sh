#!/bin/bash

curl http://yoko.ukrtux.com:8899/versions.txt | sed 's/-/./'| sort -n -t"." -k2,2 -k3,3 -k4,4 | uniq | sed 's/terraform./terraform-/'

#we can use for change symbol "-" to "."
