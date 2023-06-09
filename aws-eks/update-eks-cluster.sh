#!/bin/bash
aws eks update-kubeconfig --region us-east-1 --name  test-prod

#eksctl --region us-east-1 update-kubeconfig --name test-prod
 #update to your region and also your cluster name 
