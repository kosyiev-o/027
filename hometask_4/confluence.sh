#!/bin/bash

apt -y update
apt install -y default-jre
mkdir /var/confluence_home
chmod -R u=rwx,go-rwx /var/confluence_home/
mkdir /opt/atlassian
chmod -R u=rwx,go-rwx /opt/atlassian
cd /opt/atlassian/

if [ ! -f atlassian-confluence-7.3.1-x64.bin ]
then
wget https://www.atlassian.com/software/confluence/downloads/binary/atlassian-confluence-7.3.1-x64.bin
fi

echo "app.confHome=/var/confluence_home				#set configuration for confluence installation
app.install.service$Boolean=true
portChoice=default
launch.application$Boolean=true
sys.adminRights$Boolean=true
sys.confirmedUpdateInstallationString=false
sys.installationDir=/opt/atlassian
sys.languageId=en" > /opt/atlassian/response.varfile
chmod a+x atlassian-confluence-7.3.1-x64.bin
./atlassian-confluence-7.3.1-x64.bin -q -varfile response.varfile
/opt/atlassian/bin/./startup.sh
