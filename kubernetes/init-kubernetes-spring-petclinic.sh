#!/bin/bash

kubectl apply -f ./spring-petclinic-config-server/config-server-deployment.yaml -f ./spring-petclinic-config-server/config-server-service.yaml
sleep 10

kubectl apply -f ./tracing-server/tracing-server-deployment.yaml -f ./tracing-server/tracing-server-service.yaml
sleep 10

kubectl apply -f ./spring-petclinic-customers-service/customers-service-deployment.yaml -f ./spring-petclinic-customers-service/customers-service-service.yaml
kubectl apply -f ./spring-petclinic-visits-service/visits-service-deployment.yaml -f ./spring-petclinic-visits-service/visits-service-service.yaml
kubectl apply -f ./spring-petclinic-vets-service/vets-service-deployment.yaml -f ./spring-petclinic-vets-service/vets-service-service.yaml
kubectl apply -f ./spring-petclinic-api-gateway/api-gateway-deployment.yaml -f ./spring-petclinic-api-gateway/api-gateway-service.yaml
sleep 2

#kubectl apply -f ./spring-petclinic-admin-server/admin-server-deployment.yaml -f ./spring-petclinic-admin-server/admin-server-service.yaml

echo Started kubernetes-petclinic