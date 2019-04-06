airly.sh
=========
bash script for reading AQI (Air Quality Index) and temperature from the airly.eu sensors for BitBar (macOS) and Argos (Linux) top panels

![screenshot](screenshot.png)

Installation
-------------
- install [jq](https://stedolan.github.io/jq/) and [curl](https://curl.haxx.se/) if you don't have them
- get your airly.eu api key at https://developer.airly.eu/docs
- configure your sensor id and api key inside the script
- if you're on Linux (with Gnome WM), install [Argos](https://extensions.gnome.org/extension/1176/argos) and copy the script into the `~/.config/argos` directory
- if you're on macOS, install [BitBar](https://getbitbar.com/) and copy the script into your defined BitBar directory
- configure script refresh rate by renaming the script (default is 300 seconds = 5 minutes)

References
----------
- https://airly.eu/
- https://developer.airly.eu/docs
- https://github.com/p-e-w/argos
- https://extensions.gnome.org/extension/1176/argos/
- https://github.com/matryer/bitbar
- https://getbitbar.com/
- https://stedolan.github.io/jq/
- http://wittchen.io/2017/12/29/air-quality-monitoring-script-for-argos-linux-and-bitbar-macos/
