#! /bin/bash

ADD=$(echo "scale=3; $1+$2"|bc)
echo "$1 + $2 = $ADD"

DIFF=$(echo "scale=3; $1-$2"|bc)
echo "$1 - $2 = $DIFF"

REZ=$(echo "scale=3; $1/$2"|bc)
echo "$1 / $2 = $REZ"

MULT=$(echo "scale=3; $1*$2"|bc)
echo "$1 * $2 = $MULT"
