#!/bin/bash

USER=$(whoami)

if [ "$USER" != "root" ]; then
	echo "Error. You have to use SUDO for install: sudo ./install.sh"
	exit 0
fi

apt-get install wiringpi php -y

echo "installing..."
cd /home/pi/gpio_timer
cp ./source/gpio_timer /usr/local/bin/gpio_timer
chmod +x /usr/local/bin/gpio_timer

echo "Finish"
echo ""

