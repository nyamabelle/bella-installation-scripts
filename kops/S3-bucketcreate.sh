#!/bin/bash
  aws s3 mb s3://k8s-jan14-issabelle-k8s-bucket
  export KOPS_STATE_STORE=s3://k8s-jan14-liontech-k8s-bucket
  aws s3 ls 
