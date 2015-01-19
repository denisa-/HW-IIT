#!/bin/bash
  FOLDER=/home/[some directory]
  EXTENSION='*.jpg'
  BIGSIZE=0
  for i in $(find $FOLDER -name $EXTENSION); do
  SIZE=$(stat -c%s "$i") ; BIGSIZE=$(($BIGSIZE + $SIZE))
  done
  echo "SIZE OF FILES IN $BIGSIZE BYTES"
