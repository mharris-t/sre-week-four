#!/bin/bash

echo -e 'Starting MiniKube... \n'
minikube start

echo -e 'Creating namespace... \n'
kubectl create ns sre
echo -e '\n'

echo -e 'Deploying UpCommerce app... \n'
helm install upcommerce ./upcommerce -n sre

echo -e 'Fetching deployments... \n'
kubectl get deployments -n sre

