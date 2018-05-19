# Manual inslalation on Pi

## Prerequisites

* Setup WiFi connection and enable SSH on Pi
* Install RVM with Ruby 2.5.0 `\curl -sSL https://get.rvm.io | bash -s stable --ruby=2.5.0`
* Install passenger `gem install passenger`
* Install nginx `rvmsudo passenger-install-nginx-module`
* Symlink nginx executable `sudo ln -nfs /opt/nginx/sbin/nginx /usr/sbin/nginx`
* Create nginx init script al `/lib/systemd/system/nginx.service`. You can use (this one)[https://www.nginx.com/resources/wiki/start/topics/examples/systemd/]
Because of low Pi perfomance ruby and passenger compilling will take a lot of time (several hours)
