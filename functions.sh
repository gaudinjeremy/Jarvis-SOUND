#!/bin/bash

#MODULE SOUND : Controle du volume de la carte son et du micro

# $1 : carte son
# $2 : controller SON
# $3 : valeur
jv_set_sound(){

	amixer -c$1 set $2, 0 "$3"% >/dev/null
	jv_ia updateValue SOUND $2 $3 >/dev/null
}
