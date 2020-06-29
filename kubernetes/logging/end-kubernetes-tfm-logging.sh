#!/bin/bash

for d in `kubectl get deployments -o=NAME --namespace=tfm-logging`; do
    kubectl delete $d --namespace=tfm-logging
done

for s in `kubectl get service -o=NAME --namespace=tfm-logging`; do
    kubectl delete $s --namespace=tfm-logging
done

for ds in `kubectl get daemonset -o=NAME --namespace=tfm-logging`; do
    kubectl delete $ds --namespace=tfm-logging
done

echo End tfm-logging