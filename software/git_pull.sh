#!/bin/bash
get_abs_filename() {
  # $1 : relative filename
  echo "$(cd "$(dirname "$1")" && pwd)/$(basename "$1")"
}

echo "copying ofRecurBoy files from openframeworks folder"
cp -r ~/openframeworks10.1/apps/myApps/ofRecurBoy .
echo "pulling ofxVideoArtTools addon:"
git -C /home/pi/openframeworks10.1/addons/ofxVideoArtTools pull
echo "pulling RecurBoy repo:"
git -C /home/pi/recurBOY pull
echo "copying ofRecurBoy files to openframeworks folder"
cp -r ~/recurBOY/software/ofRecurBoy/ ~/openframeworks10.1/apps/myApps/
