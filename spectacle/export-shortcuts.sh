#!/bin/bash

for key in \
    MakeLarger \
    MakeSmaller \
    MoveToBottomHalf \
    MoveToCenter \
    MoveToFullscreen \
    MoveToLeftHalf \
    MoveToLowerLeft \
    MoveToLowerRight \
    MoveToNextThird \
    MoveToPreviousThird \
    MoveToRightHalf \
    MoveToTopHalf \
    MoveToUpperLeft \
    MoveToUpperRight \
    RedoLastMove \
    UndoLastMove \
;
do

  printf "defaults write com.divisiblebyzero.Spectacle ${key} -data ";
  defaults read com.divisiblebyzero.Spectacle ${key} | sed 's/[^0-9a-f]//g';
done