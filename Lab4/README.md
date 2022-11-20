# Lab4
The goal of this lab is to learn how to use kubernetes, in order to deploy applications to it. The following tasks have tu be fulfilled.
- Create and configure a kubernetes AKS cluster
- Configure and deploy Wordpress + MySQL containers into the AKS cluster.

## Creating and configuring the AKS cluster
Before being able to work with a cluster, it has to be created first. This can be done in multiple ways. First, you can use the CLI from azure to do this. The other way is to use the azure portal to create a AKS service.

I wanted to create the cluster manually using the command line, but I got repeated errors when using it due to quota errors. Instead, I just used the azure portal with the help of [this tutorial](https://learn.microsoft.com/en-us/azure/aks/learn/quick-kubernetes-deploy-portal?tabs=azure-cli). With the tutorial, It was no problem to set up the AKS cluster. I used mainly default set ups as well as the Dev/Test preset for testing out kubernetes. After finishing the set up, the next step was to deploy a service.

## Configure and Deploy Wordpress + MySQL
