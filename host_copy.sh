echo "$1 hubhost" > /tmp/hosts
VBoxManage guestcontrol "$2" copyto "/tmp/hosts" "C:/Windows/System32/drivers/etc/hosts" --username 'IEUser' --password 'Passw0rd!'
