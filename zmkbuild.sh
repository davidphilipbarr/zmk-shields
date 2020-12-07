#!/bin/sh

cd /home/david/Projects/zmk/app 

west build --pristine -d build/$1/left -b nice_nano -- -DSHIELD=$1_left
west build --pristine -d build/$1/right -b nice_nano -- -DSHIELD=$1_right

cp /home/david/Projects/zmk/app/build/$1/left/zephyr/zmk.uf2 /home/david/Projects/zmk/app/build/$1/$1-left-zmk.uf2
cp /home/david/Projects/zmk/app/build/$1/right/zephyr/zmk.uf2 /home/david/Projects/zmk/app/build/$1/$1-right-zmk.uf2



