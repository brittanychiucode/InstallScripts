# Update the system
sudo apt-get update && sudo apt-get -y upgrade

# Install Plex
wget https://downloads.plex.tv/plex-media-server/1.5.5.3634-995f1dead/plexmediaserver_1.5.5.3634-995f1dead_amd64.deb
sudo dpkg -i plexmediaserver*.deb

# Start Plex
sudo systemctl enable plexmediaserver.service
sudo systemctl start plexmediaserver.service
