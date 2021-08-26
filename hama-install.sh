#!/bin/sh
ASS_URL = "https://raw.githubusercontent.com/ZeroQI/Absolute-Series-Scanner/master/Scanners/Series/Absolute%20Series%20Scanner.py"
HAMA_URL = "https://github.com/ZeroQI/Hama.bundle/archive/refs/heads/master.zip"
PLEX_PATH = "/srv/plex/Library/Application\ Support/Plex\ Media\ Server/"

mkdir "$PLEX_PATH/Scanners/Series"
wget -P "$PLEX_PATH/Scanners/Series" $ASS_URL

wget -P "$PLEX_PATH/Plug-ins" $HAMA_URL
unzip "$PLEX_PATH/Plug-ins/master.zip"
mv "$PLEX_PATH/Plug-ins/hama-bundle-master" "$PLEX_PATH/Plug-ins/hama-bundle"
rm "$PLEX_PATH/Plug-ins/master.zip"
echo "Done!"