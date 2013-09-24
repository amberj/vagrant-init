#!/bin/bash
#
# This script is automatically run inside VM every time 'vagrant up' is
# executed. Put any commands in this script to setup your VM according to
# your needs. For example:

echo "==========================================================="
echo "[vagrant-vm-setup.sh] Setting up vagrant VM, please wait..."
echo "==========================================================="

sudo apt-get update
#sudo apt-get install hello

# Any commands inside the 'if' decision construct below are run only the
# very first time VM is booted using 'vagrant up'. You can use this to
# do one-time-only configuration to setup the VM.
if [ ! -f /home/vagrant/.vagrant_do_not_delete ]; then
    # Add one-time-only configuration/setup commands here. For e.g.:
    echo "Configuring the VM to make it ready to use..."

    # Do NOT delete the following line:
    touch /home/vagrant/.vagrant_do_not_delete
fi
