#!/bin/bash
xinput set-prop  "keyboard:GASIA USB KB V11" "Device Enabled" 0
sudo actkbd -c /home/uladox/.xmonad/actkbd.conf -d /dev/input/by-id/usb-GASIA_USB_KB_V11-event-kbd -D
