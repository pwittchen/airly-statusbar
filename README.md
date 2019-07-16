airly-statusbar
===============
bash script for reading AQI (Air Quality Index) from the airly.eu sensors for BitBar (macOS) and Argos (Linux + Gnome) statusbar

**please note**: I'm no longer maintain this repo. You can find the most recent version of this script here: https://github.com/pwittchen/dotfiles/blob/master/.argos/00_aqi.300s.sh in my [dotfiles](https://github.com/pwittchen/dotfiles)

![screenshot](screenshot.png)

Installation
-------------
- install [jq](https://stedolan.github.io/jq/) and [curl](https://curl.haxx.se/) if you don't have them
- get your airly.eu api key at https://developer.airly.eu/docs
- configure your `SENSOR_ID` and `API_KEY` inside the `.aqi.conf` file
- copy `.aqi.conf` file into `.config/scripts/aqi.conf` location (if you want to have different location, customize it in the bash script)
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
