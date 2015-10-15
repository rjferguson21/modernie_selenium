# Config; See readme for details.
java_exe="jre-windows-i586.exe"
firefox_exe="firefox.exe"
chrome_exe="chrome.msi"
selenium_jar="selenium-server-standalone.jar"

if [ $(uname) == "Darwin" ]
then
  # This makes sense on a mac
  nic_bridge="en0"
else
  # This works on Ubuntu
  nic_bridge="wlan0"
fi

wd=`pwd`
vm_path="VMs/"
vm_mem="1024"
vm_mem_xp="512"
deuac_iso="deuac.iso"
tools_path="${wd}/Tools/"
selenium_path="${tools_path}selenium_conf/"
ie_cache_reg="ie_disablecache.reg"
ie_protectedmode_reg="ie_protectedmode.reg"
log_path=""
vbox_user="${USER}"
mailto="root"
create_snapshot=False
