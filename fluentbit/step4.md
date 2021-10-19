## Running Fluent-Bit

First, let's create a new namespace for our DaemonSet Logger:

`kubectl create namespace logging`{{execute}}

Now we will give Fluent-Bit all permisions to the Kubernetes cluster

`kubectl apply -f fluent-bit-role-1.22.yaml -f fluent-bit-role-binding-1.22.yaml -f fluent-bit-service-account.yaml`{{execute}}

Once the permission are set, we can run fluent-bit's configmap and Daemonset

`kubectl apply -f fluent-bit-configmap.yaml -f fluent-bit-ds.yaml`{{execute}}