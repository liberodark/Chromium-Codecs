#!/bin/bash
#
# About: Install Chromium Codecs automatically
# Author: liberodark
# License: GNU GPLv3

# Close Chromium
sudo killall chromium

# Download
wget https://github.com/liberodark/Chromium-Codecs/releases/download/60.0.3112.113/chromium-browser.tar.gz

# Extract
tar -zxvf chromium-browser.tar.gz

# Move to lib
sudo rm -r /usr/lib/chromium-browser
sudo mv chromium-browser /usr/lib/

# Clean
rm chromium-browser.tar.gz

