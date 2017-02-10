#!/bin/sh

len='12:00:00'

export AUDIODRIVER=alsa
export AUDIODEV=hw:0,0

play -c 2 -b 16 -r 41000 -t sl - synth $len brownnoise band -n 4000 2500 tremolo 60 5 < /dev/zero
