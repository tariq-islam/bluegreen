#!/bin/bash

training='training'

for number in {11..35}
do
git branch "$training$number"
git remote add "remote$training$number"
git commit --empty


done
exit 0
