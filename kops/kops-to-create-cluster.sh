#!/bin/bash 
  kops create cluster --name liontech.k8s.local  --zones us-east-1a --networking weave --master-size t2.large --master-count 1 --node-size t2.large --node-count=3 
