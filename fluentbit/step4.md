## Running Fluent-Bit

First, let's create a new namespace for are Daemon Logger:

`kubectl create namespace logging`{{execute}}

Now we will give Fluent-Bit all permisions to the Kubernetes cluster

`kubectl apply -f fluent-bit-role-1.22.yaml -f fluent-bit-role-binding-1.22.yaml -f fluent-bit-serrvice-account.yaml`{{execute}}

Once done, we can now run fluent-bit's configuratgion and Daemonset

`kubectl apply -f fluent-bit-configmap.yaml -f fluent-bit-ds.yaml`{{execute}}