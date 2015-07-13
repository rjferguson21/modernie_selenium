all: fetch fetch_vms

fetch: Tools/selenium_conf/selenium-server-standalone.jar Tools/deuac.iso Tools/selenium_conf/IEDriverServer.exe Tools/jre-windows-i586.exe Tools/firefox.exe Tools/chrome.exe

fetch_vms: VMs/IE11\ -\ Win7.ova VMs/IE8\ -\ Win7.ova VMs/IE10\ -\ Win7.ova VMs/IE9\ -\ Win7.ova

VMs/IE11\ -\ Win7.ova:
	curl -O -L "https://az412801.vo.msecnd.net/vhd/VMBuild_20141027/VirtualBox/IE11/Linux/IE11.Win7.For.Linux.VirtualBox.zip"
	unzip IE11.Win7.For.Linux.VirtualBox.zip
	mkdir VMs || true
	mv "$(@F)" VMs
	rm IE9.Win7.For.Linux.VirtualBox.zip

VMs/IE10\ -\ Win7.ova:
	curl -O -L "https://az412801.vo.msecnd.net/vhd/VMBuild_20141027/VirtualBox/IE10/Linux/IE10.Win7.For.Linux.VirtualBox.zip"
	unzip IE10.Win7.For.Linux.VirtualBox.zip
	mkdir VMs || true
	mv "$(@F)" VMs
	rm IE10.Win7.For.Linux.VirtualBox.zip

VMs/IE9\ -\ Win7.ova:
	curl -O -L "https://az412801.vo.msecnd.net/vhd/VMBuild_20141027/VirtualBox/IE9/Linux/IE9.Win7.For.Linux.VirtualBox.zip"
	unzip IE9.Win7.For.Linux.VirtualBox.zip
	mkdir VMs || true
	mv "$(@F)" VMs
	rm IE9.Win7.For.Linux.VirtualBox.zip

VMs/IE8\ -\ Win7.ova:
	curl -O -L "https://az412801.vo.msecnd.net/vhd/VMBuild_20141027/VirtualBox/IE8/Linux/IE8.Win7.For.Linux.VirtualBox.zip"
	unzip IE8.Win7.For.Linux.VirtualBox.zip
	mkdir VMs || true
	mv "$(@F)" VMs
	rm IE9.Win7.For.Linux.VirtualBox.zip

Tools/selenium_conf/selenium-server-standalone.jar:
	curl -o Tools/selenium_conf/selenium-server-standalone.jar -L http://selenium-release.storage.googleapis.com/2.44/selenium-server-standalone-2.44.0.jar

Tools/deuac.iso:
	curl -o Tools/deuac.iso -L https://github.com/tka/SeleniumBox/blob/master/deuac.iso?raw=true

Tools/selenium_conf/IEDriverServer.exe:
	curl -o Tools/selenium_conf/IEDriverServer.zip -L http://selenium-release.storage.googleapis.com/2.44/IEDriverServer_Win32_2.44.0.zip
	#curl -o Tools/selenium_conf/IEDriverServer.zip -L http://selenium-release.storage.googleapis.com/2.44/IEDriverServer_x64_2.44.0.zip
	cd Tools/selenium_conf && unzip IEDriverServer.zip

Tools/jre-windows-i586.exe:
	echo "You may need to download Java for Windows from http://www.oracle.com/technetwork/java/javase/downloads/jre8-downloads-2133155.html "
	test -f $(ls jre*.exe|head -n 1) && mv jre-*-windows-i586.exe $@

Tools/firefox.exe:
	curl -o $@ -L "https://download.mozilla.org/?product=firefox-34.0.5-SSL&os=win&lang=en-GB"

Tools/chrome.exe:
	echo "You may need to download chrome for windows from https://www.google.com/chrome/browser/desktop/index.html?standalone=1"
	test -f ChromeStandaloneSetup.exe && mv ChromeStandaloneSetup.exe $@
