#/bin/bash

echo "Installing TICK Stack on Raspberry Pi 3 Stretch..."

sudo apt-get install curl
sudo curl -sL https://repos.influxdata.com/influxdb.key | sudo apt-key add -
echo "deb https://repos.influxdata.com/debian stretch stable" | sudo tee /etc/apt/sources.list.d/influxdb.list
sudo apt-get update
sudo apt-get install influxdb chronograf kapacitor telegraf
echo "Now Rebooting.."
sudo reboot