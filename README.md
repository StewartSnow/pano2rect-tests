# Example commands that I've been testing

Grabs a view from the livingroom sample shot
```
./fisheye2rect.sh -o 70 -i 170 -l 1200,600 300x225 -m z ./livingroomtest.jpg ./outlivingroomimage.jpg
```

Grabs a view from the example theatre shot

```
./fisheye2rect.sh -o 90 -i 180 -l 300,150 300x225 ./sourceimage.jpg ./outtheatreimage.jpg
```

# Things I've understood so far:
* -o is the output field of view. Default is 90 for 90 degrees, you can decrease slightly to zoom in more, or increase to zoom out.
* -i should be a fixed number to represent the field of view in the source image
* -l x, y is the pick of a pixel somewhere in the source image that you want to be the centre of the output rectangular view, taken from the centre of the image
* -m z makes the image from the zenith, or -n nazir (default). Nazir is the ceiling, Zenith is the floor
* The final coordinates are the size of the output image
