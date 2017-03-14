#!/bin/bash
source_image_width=1000
source_image_height=1000
centre_x=500
centre_y=500
direction_degrees=$1
direction_radius=$2
echo "radius=$direction_radius"
echo "degrees=$direction_degrees"
#echo "direction radians:"
radians=`echo "($direction_degrees*(4*a(1)))/180" | bc -l`
#echo "$radians"
#echo "cosine(radians):"
cosine_radians=`echo "c($radians)" | bc -l`
#echo "$cosine_radians"
#echo "sine(radians):"
sine_radians=`echo "s($radians)" | bc -l`
#echo "$sine_radians"
#echo "radius * cosine(radians):"
radius_cosine=`echo "$direction_radius*$cosine_radians" | bc -l`
#echo "$radius_cosine"
#echo "radius * sine(radians):"
radius_sine=`echo "$direction_radius*$sine_radians" | bc -l`
#echo "$radius_sine"

#echo "centre X + (radius * cosine(radians)):"
x_coord=`echo "$centre_x+$radius_cosine" | bc -l`
#echo "$x_coord"
#echo "centre Y + (radius * sine(radians)):"
y_coord=`echo "$centre_y+$radius_sine" | bc -l`
#echo "$y_coord"
echo "x,y=[$x_coord,$y_coord]"
