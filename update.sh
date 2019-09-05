#!/bin/bash

USER=$(whoami)

if [ "$USER" != "root" ]; then
	echo "Error. You have to use SUDO for install: sudo ./update.sh"
	exit 0
fi

```
cd ~/gpio_timer
git reset --hard
git pull
chmod +x ~/gpio_timer/install.sh
sudo ~/gpio_timer/install.sh
```
