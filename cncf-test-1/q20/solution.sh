ssh cp-node

vi /etc/apt/sources.list.d/kuberentes.list

# change the version of kubernetes

sudo apt-mark unhold kubelet kubectl kubeadm

sudo apt-cache madison kubeadm 

kubectl cordon cp-node

sudo apt-get install kubeadm="1.26.x"

sudo kubeadm upgrade plan v1.26.x

sudo kubeadm upgrade plan v1.26.x

kubectl drain cp-node --...

sudo apt-get install kubectl="1.26.x" kubeadm="1.26.x"

sudo systemctl daemon-reload

sudo systemctl restart kubelet

kubectl uncordon cp-node