#!/bin/bash

kubectl port-forward service/tfm-grafana-service            3000:3000 &
kubectl port-forward service/tfm-prometheus-service         9090:9090 &

