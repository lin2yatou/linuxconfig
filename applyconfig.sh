#!/bin/bash
# Filename: .bashrc

# Add configuration to my workstation,
# different PC may be different config, just FYI.

if [ `id -u` -ne 0 ];then
    echo "You are not running as a root user, please use 'sudo' to do this"
    exit
fi

# add an bin file named pvc, used to create python files
echo "Adding 'pvc' command: "
echo "===================="
echo ""
cp -v pvc.py /usr/bin/pvc
chmod a+x /usr/bin/pvc
chown root:root /usr/bin/pvc

# copy .bashrc file to ~/.bashrc, mainly contain some alias
echo "Copying .bashrc to ~/.bashrc, will overwrite local version"
echo "===================="
echo ""
cp -v -f ./currentconfig/.bashrc ~/.bashrc

# copy .gitconfig file to ~/.gitconfig, mainly contain git global config values
echo "Copying .gitconfig to ~/.gitconfig, will overrite local file"
echo "===================="
echo 
cp -v -f ./currentconfig/.gitconfig ~/.gitconfig

# copy vimrc file to /etc/vim/vimrc, the config settings of vim
echo "Copying vimrc to /etc/vim/vimrc, will overrite local file"
echo "===================="
echo 
cp -v -f ./currentconfig/vimrc /etc/vim/vimrc


