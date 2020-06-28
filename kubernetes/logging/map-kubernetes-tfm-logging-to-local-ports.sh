#!/bin/bash

kubectl --namespace=tfm-logging port-forward service/elasticsearch      9200:9200 &
kubectl --namespace=tfm-logging port-forward service/tfm-kibana-service     5601:5601 &