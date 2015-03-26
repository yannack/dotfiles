#!/bin/bash
killall conky
while killall -0 conky
do
    sleep 1
done

for rc_file in ~/.dotfiles/conky/conky_rc/*rc
do
	conky -c $rc_file &
done
