#!/bin/bash

# Define the ReplicaSet name
replicaset_name="nginx-replicaset"

# Get the Pods controlled by the ReplicaSet
pods=$(kubectl get pods --selector=app=${replicaset_name} -o=jsonpath='{.items[*].metadata.name}')

# Iterate over each Pod and perform port forwarding
for pod in ${pods}; do
  kubectl port-forward ${pod} 80:80 &
  echo "${pod} forwarded -> 80"
done

# Wait for the port forwarding to complete
wait
