#!/bin/bash

curl http://yoko.ukrtux.com:8899/versions.txt | sort | uniq -c | sort -rn | head -1  |sed 's/^[ t]*//' #[sed...] - option for deleting spaces

