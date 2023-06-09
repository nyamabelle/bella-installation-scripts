!#/bin/bash
eksctl create cluster --name test-prod   --version 1.22 --region us-east-1 --nodegroup-name best-buy  --node-type t3.2xlarge --nodes 3 --nodes-min 1 --nodes-max 4 --managed
