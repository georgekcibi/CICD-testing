# Sample CI/CD Pipeline project using Jenkins, Docker and kubernetes

The purpose of this example is to take you through an easy to follow and simple approach of a CI/CD (Continuous Integration/Continuous Deployment) workflow. It will take you through setting up a Pipeline to build the application docker image, store it to a registry, and deploying the application to a Kubernetes cluster, all on a single push event.

This example makes assumptions that you have at least a basic knowledge of Kubernetes, Jenkins, and Docker

## Prerequisites

- A working kubernetes cluster with atleast 1 node
- A Jenkins server
