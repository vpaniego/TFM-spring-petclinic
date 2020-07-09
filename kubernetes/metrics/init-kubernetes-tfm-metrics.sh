#!/bin/bash

kubectl apply -f ./grafana/grafana-credentials.yaml -f ./grafana/grafana-config-init.yaml -f ./grafana/grafana-config-dash.yaml -f ./grafana/grafana-config-dash-provider.yaml -f ./grafana/grafana-config-datasources-provider.yaml -f ./grafana/grafana-deployment.yaml -f ./grafana/grafana-service.yaml
sleep 8

kubectl apply -f ./prometheus/prometheus-config-map.yaml -f ./prometheus/prometheus-deployment.yaml -f ./prometheus/prometheus-service.yaml

echo Started tfm-metrics