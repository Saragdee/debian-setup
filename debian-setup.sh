#!/bin/bash

# Update and upgrade system
sudo apt update && sudo apt upgrade -y

# Install packages
sudo apt install nala tlp tlp-rdw smartmontools -y

# Start and enable TLP
sudo tlp start
sudo systemctl enable tlp

# Remove unnecessary packages
sudo apt remove gnome-2048 aisleriot gnome-chess five-or-more four-in-a-row gnome-nibbles hitori gnome-klotski lightsoff gnome-mahjongg gnome-mines quadrapassel gnome-robots gnome-sudoku swell-foop tali gnome-taquin gnome-tetravex iagno shotwell gnome-text-editor rhythmbox seahorse gnome-maps evolution gnome-contacts cheese malcontent -y

# Autoremove any leftover dependencies
sudo apt autopurge -y

echo "Setup complete."
