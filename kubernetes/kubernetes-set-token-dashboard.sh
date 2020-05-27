#!/bin/bash

readarray -d : -t TOKEN <<< `kubectl -n kube-system describe secret default | grep token: `
kubectl config set-credentials docker-for-desktop --token="${TOKEN[1]}" 
echo "Token almacenado en .kube/.config"
echo ${TOKEN[1]}