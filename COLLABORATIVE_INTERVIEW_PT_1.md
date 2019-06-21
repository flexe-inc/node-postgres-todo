# Collaborative Interview Pt. 1
1. Please send or create github username to Hiring Manager  
2. Please download required command line tools
* [docker](https://cloud.google.com/sdk/)
* [gcloud](https://cloud.google.com/sdk/)
* [kubectl](https://cloud.google.com/kubernetes-engine/docs/quickstart) `gcloud components install kubectl`
3. Configure GCloud with Interview specific service account
```bash
# Prior to this point Hiring manager should have sent you an email with service account 
# credentials file 
cat CREDENTIALS_FILE_SENT_IN_EMAIL > credentials.json
gcloud auth activate-service-account --key-file=credentials.json
```
Reference: [configure gcloud auth](https://cloud.google.com/sdk/gcloud/reference/auth/activate-service-account).
4. Configure Kubectl to point to different Kubernetes clusters
 ```bash
 # Ensure gcloud config is set to flexe-interviews as the google cloud project
 gcloud config set project flexe-interviews
 # Staging
 gcloud container clusters get-credentials staging --zone=us-west1-a
 ```  
Kubectl config context names are defined by GCloud convention.  
```bash
kubectl config get-contexts
# Should result in two configurations for production and staging
# gke_flexe-interviews_us-west1-a_staging
```

### Goals
* Pair program with other engineers on how to build Docker image for a node.js 
application
* Pair program with other engineers figure out how to deploy an internally exposed 
(intra-cluster) service to Staging 

### Notes
* Docker images can be pushed and referenced from `gcr.io/flexe-interviews/`
