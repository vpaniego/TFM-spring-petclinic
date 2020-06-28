#!/bin/bash

NAMESPACE=`kubectl get namespaces | grep tfm-logging`
if [ -z "$NAMESPACE" ]
then
    echo "Creando namespace 'tfm-logging' para sistema de logging EFK..."
    kubectl apply -f ./tfm-logging-namespace.yaml
fi

ELASTICSEARCH_VOLUME=`kubectl get pvc --namespace=tfm-logging | grep tfm-elasticsearch-pvc`
if [ -z "$ELASTICSEARCH_VOLUME" ]
then
    echo "Creando configuracion de PersistentVolumeClaim para 'elasticsearch'..."
    kubectl apply -f ./elasticsearch/elasticsearch-pvc.yaml
fi
kubectl apply -f ./elasticsearch/elasticsearch-deployment.yaml -f ./elasticsearch/elasticsearch-service.yaml
sleep 10

FLUENTD_SERVICEACCOUNT=`kubectl get serviceaccount --namespace=tfm-logging | grep fluentd`
if [ -z "$NAMESPACE" ]
then
    echo "Creando configuracion de autorizacion a 'fluentd' para uso de API kubernetes..."
    kubectl apply -f ./fluentd/fluentd-authorization.yaml
fi
kubectl apply -f ./fluentd/fluentd-daemonset.yaml

kubectl apply -f ./kibana/kibana-deployment.yaml -f ./kibana/kibana-service.yaml
