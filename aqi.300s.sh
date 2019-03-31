#!/usr/bin/env bash

# This script is responsible for getting Common Air Quality Index (AQI) and temperature from a given station basing on airly.eu sensors
# info about Common Air Quality Index (AQI) in Poland: https://www.airqualitynow.eu/pl/about_indices_definition.php

#################
# configuration #
#################

SENSOR_ID="526"         # customize your sensor id here
API_KEY="YOUR_API_KEY"  # put your api key here

#################

URL="https://airapi.airly.eu/v2/measurements/installation?installationId=$SENSOR_ID"
API_KEY_PREFIX="apikey: "
API_KEY_HEADER="$API_KEY_PREFIX$API_KEY"
TYPE="Accept: application/json"

AQI=$(curl -X GET \
    --silent \
    --header "$TYPE" \
    --header "$API_KEY_HEADER" \
    "$URL" \
    | jq .current | jq .indexes | grep value | awk '{print $2}' | cut -f1 -d"." | cut -f1 -d",")

TMP=$(curl -X GET \
    --silent \
    --header "$TYPE" \
    --header "$API_KEY_HEADER" \
    "$URL" \
    | jq .current | jq .values | jq last | grep value | awk '{print $2}')

MSG="Unknown"

case 1 in
  $(($AQI <= 25)))  MSG="Great!";;
  $(($AQI <= 50)))  MSG="Good!";;
  $(($AQI <= 75)))  MSG="Medium";;
  $(($AQI <= 100))) MSG="Bad";;
  $(($AQI >= 101))) MSG="Very Bad";;
esac

if [ "$AQI" == "null" ]; then
    echo "AQI sensor is off"
else
    echo "AQI $AQI ($MSG) $TMP°C"
fi
