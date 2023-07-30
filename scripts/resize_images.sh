#!/bin/bash

IMAGE_DIR=$1

find $IMAGE_DIR -name \*jpg |tr \\n \\0 |xargs -0 -n1 -I{} convert "{}" -resize 1024x1024\> "{}"
