# 9550mojave
mojave clover for xps15 9550 i5 1080p

# 更新：  
更新CLOVER，采用USBinjectall.kext，因为最新的usbport.kext在我的机器上无法驱动usb3.0  
++++++++++++++++++++++++++++++++++++++

我并未有时间去研究黑苹果的驱动，编译等，只要替换上EFI能正常使用就行。。  
在尝试了https://github.com/darkhandz/XPS-9550-Mojave  
https://github.com/xxxzc/xps15-9550-macos 的链接后仍然无法正常使用usb3.0.  
具体表现为usb3.0的u盘插入后无法显示，也尝试了远景论坛中的更换替换代码的方法仍然无效。  
所以基于10.13的EFI和上面的EFI拼凑出了一个EFI文件，目前usb3.0正常。  
当然还是期待上面几位的更新。  

# 使用：  
直接替换CLOVER文件即可，音量一切正常，如果出现耳机声音异常，可以尝试双击安装  
Post-install/ALC298PluginFix/install双击自动卸载.command

![image](/CLOVER/themes/Mojave/screenshot.png)
