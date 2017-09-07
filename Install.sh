#!/bin/bash
#
# About: Install Chromium Codecs automatically
# Author: liberodark
# License: GNU GPLv3

# Close Chromium
killall chromium

# Download
wget https://github.com/liberodark/Chromium-Codecs/releases/download/60.0.3112.113/chromium-browser.tar.gz

# Extract
tar -zxvf chromium-browser.tar.gz

# Move to lib
sudo mv chromium-browser /usr/lib/
