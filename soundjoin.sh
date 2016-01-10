#!/bin/bash
#Merge multiple wavs to a single ogg

sox *.recording.wav combined.wav
oggenc -q 3 -o recording.ogg combined.wav
rm combined.wav
