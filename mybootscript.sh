#!/bin/bash
sudo yum install -y git
git clone https://github.com/udayreddyd/prom-graf-alertm-setup.git
chown -R opc:opc /prom-graf-alertm-setup
mv /prom-graf-alertm-setup /home/opc/
cd /home/opc/prom-graf-alertm-setup/
chmod +x *.sh
if 
	$hostname = prometheus
	sudo su - opc
	cd /home/opc/prom-graf-alertm-setup
	./promethes-install.sh
then

elif
	$hostname = grafana
	sudo su - opc
	cd /home/opc/prom-graf-alertm-setup
	./grafana-install.sh
then
else
	$hostname = alertmanager
	sudo su - opc
	cd /home/opc/prom-graf-alertm-setup
	./alertManager-install.sh
fi
