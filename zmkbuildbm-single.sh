#!/bin/sh

cd /home/david/Projects/zmk/app 

west build --pristine -d build/$1/ -b bluemicro840_v1 -- -DSHIELD=$1



cp /home/david/Projects/zmk/app/build/$1/zephyr/zmk.uf2 /home/david/Projects/zmk/app/build/$1/$1-zmkbm.uf2
