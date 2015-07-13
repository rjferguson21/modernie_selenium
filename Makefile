all: fetch fetch_vms

fetch: Tools/selenium_conf/selenium-server-standalone.jar Tools/deuac.iso Tools/selenium_conf/IEDriverServer.exe Tools/jre-windows-i586.exe Tools/firefox.exe Tools/chrome.msi Tools/selenium_conf/chromedrive.exe

fetch_vms: VMs/IE11\ -\ Win7.ova VMs/IE8\ -\ Win7.ova VMs/IE10\ -\ Win7.ova VMs/IE9\ -\ Win7.ova

VMs/IE11\ -\ Win7.ova:
	curl -O -L "https://az412801.vo.msecnd.net/vhd/VMBuild_20141027/VirtualBox/IE11/Linux/IE11.Win7.For.Linux.VirtualBox.zip"
	unzip IE11.Win7.For.Linux.VirtualBox.zip
	mkdir VMs || true
	mv "$(@F)" VMs
	rm IE11.Win7.For.Linux.VirtualBox.zip

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
	rm IE8.Win7.For.Linux.VirtualBox.zip

Tools/selenium_conf/chromedrive.exe:
	curl -o Tools/selenium_conf/chromedriver.zip -L http://chromedriver.storage.googleapis.com/2.15/chromedriver_win32.zip
	cd Tools/selenium_conf && unzip chromedriver.zip

Tools/selenium_conf/selenium-server-standalone.jar:
	curl -o Tools/selenium_conf/selenium-server-standalone.jar -L http://selenium-release.storage.googleapis.com/2.44/selenium-server-standalone-2.44.0.jar

Tools/deuac.iso:
	curl -o Tools/deuac.iso -L https://github.com/tka/SeleniumBox/blob/master/deuac.iso?raw=true

Tools/selenium_conf/IEDriverServer.exe:
	curl -o Tools/selenium_conf/IEDriverServer.zip -L http://selenium-release.storage.googleapis.com/2.44/IEDriverServer_Win32_2.44.0.zip
	cd Tools/selenium_conf && unzip IEDriverServer.zip

Tools/jre-windows-i586.exe:
	curl -j -o Tools/jre-windows-i586.exe -L -O -H "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/8u45-b15/jre-8u45-windows-i586.exe

Tools/firefox.exe:
	curl -o $@ -L "https://download.mozilla.org/?product=firefox-34.0.5-SSL&os=win&lang=en-GB"

Tools/chrome.msi:
	curl -o $@ -L "https://dl.google.com/dl/chrome/install/googlechromestandaloneenterprise.msi"
