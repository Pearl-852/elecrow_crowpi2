# Crowpi2

### Expands the Raspberry Pi filesystem
1. Open a new Terminal (**Ctrl**+**Alt**+**T**) <br>
2. Type `sudo raspi-config` and press **Enter** to launch the _**Raspberry Pi Configuration**_ apps. <br>
3. Select the option as highlighted below, <br>
![Image text](https://github.com/Pearl-852/elecrow_crowpi2/blob/main/raspi-config--Main.png) <br>
![Image text](https://github.com/Pearl-852/elecrow_crowpi2/blob/main/raspi-config--Advanced_Options.png) <br>
4. When a confirmation dialog box appears, press **Enter** to return to the main menu. <br>
5. Press **Tab** twice to choose **Finish** and press **Enter**. <br>
6. Choose **YES** and press **Enter** when it prompts to reboot. <br>
_**Note**: The latest Raspberry Pi OS image will expand the filesystem automatically at the initial boot._ <br>

### Which Raspberry Pi models are recommended for Crowpi2 software?
Crowpi2 software is recommended to run on a Raspberry Pi 4 Model B with 2GB RAM or higher (preferably with 4GB or 8GB).

### Why can't the GPIO-0 (SDA0) pin be used?
GPIO-0 (SDA0) is reserved to detect Raspberry Pi startup in order to control the power on/off on the PCBA board, so without this pin signal being driven low, the CrowPi2 will shutdown unexpectedly.

### To install the new Raspberry Pi OS, what additional configuration should be made.
If you use the new Raspbain image, open the config.txt file in the TF kagan directory after the burn is completed, and modify the config.txt code as follows (add at the end):<br>

After flashing a new Raspberry Pi OS image, you will need to edit the **config.txt**, located in the **/boot** directory of the SD card, adding (Cut & Paste) the following statements to the end of the file.
```
hdmi_force_hotplug=1
hdmi_group=2
hdmi_mode=82
hdmi_drive=2
enable_uart=1
gpio=0=op,dl
```
In addition, after booting up with the new image, open a new Terminal and execute the following commands
`git clone https://github.com/elecrow-engle/elecrow_crowpi2.git`
`cd elecrow_crowpi2/GPIO`
`sudo bash ./start.sh`

