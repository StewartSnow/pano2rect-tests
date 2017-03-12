# Fish-eye to rectangular tests

## Test commands

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


## Installation:

On OSX:
* Ensure that brew is installed first (https://brew.sh)
* Use brew to install imagemagick:
* brew install imagemagick (http://brewformulas.org/Imagemagick)
* Download fisheye2rect script from (http://www.fmwconcepts.com/imagemagick/fisheye2rect/index.php)
* give the script file execution permissions:
* sudo chmod +x ./fisheye2pano.sh
* Also worth looking at (http://www.fmwconcepts.com/imagemagick/fisheye2pano/index.php) turns the fisheye image into a wide panorama image
