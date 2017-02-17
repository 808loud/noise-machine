#!/bin/bash

# Going to use bluetooth dongle instead, so commenting out these lines for now
#export AUDIODRIVER=alsa
#export AUDIODEV=hw:0,0

# play -c $numberOfChannels -b $bitRate -r sampleRate -t sl - synth $duration brownnoise tremolo $tremoloSpeed $tremoloDepth gain $gainDecibels < $outputFile
/usr/bin/play -c 2 -b 16 -r 44.1k -n synth 12:00:00 brownnoise tremolo 11 0.5 gain -9 < /dev/zero
