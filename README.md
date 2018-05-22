# Manual inslalation on Pi

## Prerequisites

* Enable (OTG mode on Pi)[https://gist.github.com/gbaman/975e2db164b3ca2b51ae11e45e8fd40a]
** (Share internet)[https://learn.adafruit.com/turning-your-raspberry-pi-zero-into-a-usb-gadget/ethernet-tweaks] from host machine to pi 
** OR just connect it to your WiFi network using `sudo raspi-config`
* Add your key to authorized keys on pi
```
mkdir ~/.ssh
echo "your-public-key" > ~/.ssh/authorized_keys
```
* Install required packages `sudo apt-get update && sudo apt-get install -y curl gnupg2 build-essential vim dirmngr git`
* Install RVM with Ruby 2.5.0 
```
sudo gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
gpg2 --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
\curl -sSL https://get.rvm.io | sudo bash -s stable
sudo usermod -a -G rvm `whoami`
```
* Relogin to pi to activate RVM
* Install latest ruby with `rvm install ruby-2.5.1` (tooks about 97 min)
* Create app user `sudo adduser pi_zero_w_manager`
* Add your key to authorized keys
```
sudo sh -c "cat $HOME/.ssh/authorized_keys >> ~pi_zero_w_manager/.ssh/authorized_keys"
sudo chown -R pi_zero_w_manager: ~pi_zero_w_manager/.ssh
sudo chmod 700 ~pi_zero_w_manager/.ssh
sudo sh -c "chmod 600 ~pi_zero_w_manager/.ssh/*"
```
* Prepare place for the app
```
sudo mkdir -p /var/www/pi_zero_w_manager
sudo chown pi_zero_w_manager: /var/www/pi_zero_w_manager
```

