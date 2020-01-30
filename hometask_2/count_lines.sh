#!/bin/bash

curl http://yoko.ukrtux.com:8899/versions.txt | sort | uniq -c | sort -rn | head -1 | sed s/'     '//g #[sed...] - option for deleting first 5 spaces (' ')

