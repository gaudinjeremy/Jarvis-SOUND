#!/bin/bash

#MODULE SOUND : Controle du volume de la carte son et du micro

# $1 : carte son (0,1)
# $2 : controller SON (PCM, MIC)
# $3 : valeur
jv_set_sound(){

	amixer -c$1 set $2,0 "$3"% >/dev/null
	jv_ia_say updateValue sound $2 $3
}
