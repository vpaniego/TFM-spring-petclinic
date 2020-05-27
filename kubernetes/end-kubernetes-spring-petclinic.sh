#!/bin/bash

#kubectl delete --all deployments --namespace=default
for d in `kubectl get deployments -o=NAME | grep tfm-`; do
    kubectl delete $d --namespace=default
done

#kubectl delete --all services --namespace=default
for s in `kubectl get service -o=NAME | grep tfm-`; do
    kubectl delete $s --namespace=default
done

echo End kubernetes-petclinic