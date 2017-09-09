#!/bin/bash
#
# About: Install Chromium Codecs automatically
# Author: liberodark
# License: GNU GPLv3

# Check Software
which chromium &> /dev/null

if [[ "$?" != 0 ]]; then
    echo "Error Chromium is not Installed"
    exit
else
    echo "Chromium is Installed"
fi

which wget &> /dev/null

if [[ "$?" != 0 ]]; then
    echo "Error wget is not Installed"
    exit
else
    echo "wget is Installed"
fi

which pkill &> /dev/null

if [[ "$?" != 0 ]]; then
    echo "Error pkill is not Installed"
    exit
else
    echo "pkill is Installed"
fi

# Close Chromium
pkill chromium &> /dev/null

if [[ "$?" != 0 ]]; then
    echo "Chromium is open please close it"
else
    echo "Chromium is closed"
fi

# Download
wget https://github.com/liberodark/Chromium-Codecs/releases/download/60.0.3112.113/chromium-browser.tar.gz &> /dev/null

if [[ "$?" != 0 ]]; then
    echo "Error downloading file"
else
    echo "Download Success"
fi

# Check MD5
#wget https://github.com/liberodark/Chromium-Codecs/releases/download/60.0.3112.113/md5.sig
#if ! md5sum -c md5.sig; then

# Extract
tar -zxvf chromium-browser.tar.gz &> /dev/null

if [[ "$?" != 0 ]]; then
    echo "Codec is not Extracted"
else
    echo "Codec is Extracted"
fi

# Move to lib
sudo rm -r /usr/lib/chromium-browser &> /dev/null

if [[ "$?" != 0 ]]; then
    echo "Old Codec is not Removed or not Installed"
else
    echo "Old Codec is Removed"
fi

sudo mv chromium-browser /usr/lib/ &> /dev/null

if [[ "$?" != 0 ]]; then
    echo "Codec is not Installed"
else
    echo "Codec is Installed"
fi

# Clean
rm chromium-browser.tar.gz &> /dev/null

if [[ "$?" != 0 ]]; then
    echo "Download is not Cleaned"
else
    echo "Download is Cleaned"
fi
