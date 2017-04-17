#!/bin/bash

training='training'

for number in {11..35}
do
git branch "$training$number"
done
exit 0
