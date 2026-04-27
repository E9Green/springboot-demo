#!/bin/bash

echo "Starting Minikube..."
minikube start

echo "Applying ConfigMap..."
kubectl apply -f mysql-config.yaml

echo "Deploy MySQL..."
kubectl apply -f mysql-deployment.yaml

echo "Deploy Nexus..."
kubectl apply -f nexus-deployment.yaml

echo "Deploy Jenkins..."
kubectl apply -f jenkins-deployment.yaml

echo "Deploy Web App..."
kubectl apply -f app-deployment.yaml

echo "Apply Service..."
kubectl apply -f app-service.yaml

echo "Apply PV and PVC..."
kubectl apply -f pv.yaml
kubectl apply -f pvc.yaml

echo "Done. Checking resources..."
kubectl get all
