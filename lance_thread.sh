#!/bin/bash

#ajouter la commande "sh $HOME/Lcd_project/lance_thread.sh &" dans le fichier  "/etc/rc.local" pour 
#lancer le script au demmarage de la carte 

#activer le mode monitor pour le device wlan0
#sudo service ifplugd stop 

sudo ifconfig wlan0 down 
sudo iwconfig wlan0 mode monitor 
sudo ifconfig wlan0 up

cd $HOME
rm -rf Kismet*

sleep 1
#lance le serveur kismet et apres chaque 5s le serveur kismet ecrit dans le fichier Kismet-*.nettxt
#sudo vim /etc/kismet/kismet.conf :: fichier de configuration kismet
#sudo /usr/local/bin/kismet_server  : ça depend de l'installation (installation manuel avec un dep ou avec apt-get)

sudo /usr/bin/kismet_server &
sleep 2
#sudo python Lcd_project/main.py

