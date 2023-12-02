# 1. update apt sources for kubernetes

vi /etc/apt/sources.list.d/kubernetes.list

# update 1.24 -> 1.25 in the list

# 2. upgrade kubeadm, kubelet, kubectl
sudo apt-cache madison kubeadm kubectl kubelet
sudo apt-mark unhold kubeadm kubectl kubelet
sudo apt-get update

sudo apt-get upgrade -y kubeadm=1.25.0-xx

sudo apt-mark hold kubeadm

sudo kubeadm upgrade plan
sudo kubeadm upgrade node

kubectl cordon control-plane-node-0
kubectl drain control-plane-node-0 --ignore-daemonsets --delete-local-data

sudo apt-get upgrade -y kubelet=1.25.0-xx kubectl=1.25.0-xx

sudo apt-mark hold kubelet kubectl

sudo systemctl daemon-reload
sudo systemctl restart kubelet

kubectl uncordon control-plane-node-0