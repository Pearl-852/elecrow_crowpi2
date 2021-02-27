# Crowpi2 <br>

### Expands the Raspberry Pi filesystem <br>
1. Open a new Terminal (**Ctrl**+**Alt**+**T**) <br>
2. Type `sudo raspi-config` and press **Enter** to launch the _**Raspberry Pi Configuration**_ app. <br>
3. Select the option as highlighted below, <br>
![Image text](https://github.com/Pearl-852/elecrow_crowpi2/blob/main/raspi-config--Main.png) <br>
![Image text](https://github.com/Pearl-852/elecrow_crowpi2/blob/main/raspi-config--Advanced_Options.png) <br>
4. When a confirmation dialog box appears, press **Enter** to return to the main menu. <br>
5. Press **Tab** twice to choose **Finish** and press **Enter**. <br>
6. Choose **YES** and press **Enter** when it prompts to reboot. <br>
_**Note**: The latest Raspberry Pi OS image will expand the filesystem automatically at the initial boot._ <br>

### Which Raspberry Pi models are recommended for Crowpi2 software? <br>
Crowpi2 software is recommended to run on a Raspberry Pi 4 Model B with 2GB RAM or higher (preferably with 4GB or 8GB). <br>

### Why can't the GPIO-0 (SDA0) pin be used? <br>
GPIO-0 (SDA0) is reserved to detect Raspberry Pi startup status in order to control the power on/off on the PCBA board, so without this pin signal being driven 'low', the CrowPi2 will shutdown unexpectedly. <br>

### To install the new Raspberry Pi OS, what additional configuration should be made? <br>
After flashing a new Raspberry Pi OS image, you will need to edit the **config.txt**, located in the **/boot** directory of the SD card, adding (Cut & Paste) the following statements to the end of the file. <br>
```
hdmi_force_hotplug=1
hdmi_group=2
hdmi_mode=82
hdmi_drive=2
enable_uart=1
gpio=0=op,dl
```
In addition, after booting up with the new image, open a new Terminal and execute the following commands <br>
`git clone https://github.com/elecrow-engle/elecrow_crowpi2.git` <br>
`cd elecrow_crowpi2/GPIO` <br>
`chmod +x start.sh` <br>
`sudo ./start.sh` <br>

