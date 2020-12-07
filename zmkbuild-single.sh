#!/bin/sh

cd /home/david/Projects/zmk/app 

west build --pristine -d build/$1/ -b nice_nano -- -DSHIELD=$1



cp /home/david/Projects/zmk/app/build/$1/zephyr/zmk.uf2 /home/david/Projects/zmk/app/build/$1/$1-zmk.uf2
