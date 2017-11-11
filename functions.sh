#!/bin/bash

#MODULE SOUND : Controle du volume de la carte son et du micro

js_sd_setSound(){

	amixer -c$carteSon set $controllerSon,0 "$1"% >/dev/null
}

js_sd_setMic(){

	amixer -c$carteMic set $controllerMic,0 "$1"% >/dev/null
}
