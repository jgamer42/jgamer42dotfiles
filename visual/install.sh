#!/bin/bash
set -e 

#this script was stolen from https://code.visualstudio.com/docs/setup/linux
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
sudo install -o root -g root -m 644 packages.microsoft.gpg /etc/apt/trusted.gpg.d/
sudo sh -c 'echo "deb [arch=amd64 signed-by=/etc/apt/trusted.gpg.d/packages.microsoft.gpg] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'

#so here install the vscode vanilla
sudo apt-get install apt-transport-https
sudo apt-get update
sudo apt-get install code

cat extensions.txt | while read extension
do 
   sudo  code --intall-extension $extension
done
