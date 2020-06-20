#!/bin/bash

#kubectl port-forward service/tfm-config-server-service      8888:8888 &

kubectl port-forward service/tfm-api-gateway-service        8080:8080 &
kubectl port-forward service/tfm-customers-service-service  8081:8081 &
kubectl port-forward service/tfm-visits-service-service     8082:8082 &
kubectl port-forward service/tfm-vets-service-service       8083:8083 &
kubectl port-forward service/tfm-admin-server-service       9090:9090 &
kubectl port-forward service/tfm-prometheus-service         9100:9100 &
kubectl port-forward service/tfm-tracing-server-service     9411:9411 &
kubectl port-forward service/tfm-grafana-service            3000:3000 &