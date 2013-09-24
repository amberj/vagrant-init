#!/bin/bash
#
# This script is automatically run inside VM every time 'vagrant up' is
# executed. Put any commands in this script to setup your VM according to
# your needs. For example:

echo "==========================================================="
echo "[vagrant-vm-setup.sh] Setting up vagrant VM, please wait..."
echo "==========================================================="

# Any commands inside the 'if' decision construct below are run only the
# very first time VM is booted using 'vagrant up'. You can use this to
# do one-time-only configuration to setup the VM.
if [ ! -f /home/vagrant/.vagrant_do_not_delete ]; then
    # Add one-time-only configuration/setup commands here. For e.g.:
    echo "Configuring the VM to make it ready to use..."
    sudo apt-get -y update
    #sudo apt-get -y install hello
    
    # Do NOT delete the following line:
    touch /home/vagrant/.vagrant_do_not_delete
fi
