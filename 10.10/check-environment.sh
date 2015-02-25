#!/bin/bash

installation_list=($(cat ./10.10/installation.list))

index=0

while [ -n "${installation_list[index]}" ]; do
  echo ${installation_list[index]}
  index=$(( $index + 1 ))
done
