#!/bin/bash

installation_list=($(cat ./10.10/installation.list))

function checkInstallation {
  installation=$(./10.10/$1/check.sh)

  if [[ ${installation} =~ ^.*installed$ ]]; then
    return 0
  else
    return 1
  fi
}

index=0
while [ -n "${installation_list[index]}" ]; do
  checkInstallation ${installation_list[index]}

  if [ "$?" -eq "0" ]; then
    installation_list=(${installation_list[@]:0:$index} ${installation_list[@]:$(($index + 1))})
  fi

  index=$(( $index + 1 ))
done
