#!/bin/sh


zmkdir=/home/david/Projects/zmk/app
cd $zmkdir

rm -R build/$1/*

west build --pristine -d build/$1/left -b bluemicro840_v1 -- -DSHIELD=$1_left
west build --pristine -d build/$1/right -b bluemicro840_v1 -- -DSHIELD=$1_right


west build --pristine -d build/settings_reset/ -b bluemicro840_v1 -- -DSHIELD=settings_reset

cp $zmkdir/build/$1/left/zephyr/zmk.uf2 $zmkdir/build/$1/$1-left-bm-zmk.uf2
cp $zmkdir/build/$1/right/zephyr/zmk.uf2 $zmkdir/build/$1/$1-right-bm-zmk.uf2

cp $zmkdir/build/settings_reset/zephyr/zmk.uf2 $zmkdir/build/$1/settings_reset_bm-zmk.uf2

xdg-open $zmkdir/build/$1/
