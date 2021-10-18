## Build an Deploy the ClamAV microservice

To begin, make sure your Kubernetes environment is set up. Once the terminal has finished outputting messages and is ready for input it should be setup. To confirm it is ready please run the following command:

`kubectl version`{{execute}}

You should now see the versions of your kubectl client and server. If so, your environment is all set up. If you do not see the version of your Kubernetes server wait a few moments and repeat the previous command until it is shown.
 

Once the kubernetes is ready, you need to deploy ClavmAV to Kubernetes. To learn more about Kubernetes manifests, check out the following documentation: https://kubernetes.io/docs/concepts/cluster-administration/manage-deployment/

To do this use, the following command:

`kubectl apply -f clamav-deployment.yaml`{{execute}}
