#!/bin/bash
# Exit on any error
set -e
envsubst < ./kubernetes/kustomization-template.yaml > "./kubernetes/base/kustomization.yaml"
 
kubectl kustomize "./kubernetes/base" | kubectl apply -f -
