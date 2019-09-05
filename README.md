# gpio_timer
count how many seconds a gpio-pin of your raspberry stand up

# install

```
sudo apt-get install -y wiringpi php git-core
cd ~
git clone "https://github.com/gioexperience/gpio_timer.git"
cd gpio_timer
chmod +x install.sh
sudo ~/gpio_timer/install.sh
```

## for update from git-hub

```
cd ~/gpio_timer
sudo ./update.sh
```

## usage

```gpio_time [pin] [url_to_call]```

For example using 

```./gpio_time 7 'http://192.168.0.1/api/foo.php'```

This example monitor pin 7 when it go to active, 0 value (active-low philosophy)
When the total active-time (in seconds) exceeds 10 seconds, he call the url and pass a
parameter 't' with the exactly seconds. Example http://192.168.0.1/api/foo.php?t=11.34

