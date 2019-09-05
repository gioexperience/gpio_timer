# gpio_timer
count how many seconds a gpio-pin of your raspberry stand up

# install

```
sudo apt-get install -y wiringpi php git-core
cd ~
git clone "https://github.com/gioexperience/gpio_timer.git"
chmod +x ~/gpio_timer/install.sh
sudo ~/gpio_timer/install.sh
```

## update from git-hub

```
cd ~/gpio_timer
sudo chmod +x ./update.sh
sudo ./update.sh
```

## usage

```gpio_timer [pin] [url_to_call]```

For example using 

```./gpio_timer 7 'http://192.168.0.1/api/foo.php'```

This example monitor pin 7 when it go to active, 0 value (active-low philosophy)
When the total active-time (in seconds) exceeds 10 seconds, he call the url and pass a
parameter 't' with the exactly seconds. Example http://192.168.0.1/api/foo.php?t=11.34

## in rc.local, setup

in /etc/rc.local you must setup your pin in read mode, and with a pull-up resistor. An example below

```
[......]


gpio -g mode 7 in
gpio -g mode 7 up

[......]
```


