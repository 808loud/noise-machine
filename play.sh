#!/bin/bash

# set display variable so sound works
#export DISPLAY=:0

# Going to use bluetooth dongle instead of raspi analog audio output, so commenting out these lines for now
#export AUDIODRIVER=alsa
#export AUDIODEV=hw:0,0

# Documentation
# http://sox.sourceforge.net/sox.html
# --null is the input file needed to generate random noise (using synth)
# fade $typeOfFade $fadeInLength $stopPosition
# tremolo $tremoloSpeed $tremoloDepth
# gain $gainDecibels
# output is piped to /dev/zero as we don't need sox to generate a file
/usr/bin/play --channels 2 --rate 44.1k --null synth 11:00:00 brownnoise fade q 30 0 tremolo 11 0.5 gain -15 < /dev/zero
