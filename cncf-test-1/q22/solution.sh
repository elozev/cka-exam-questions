sudo kubeadm certs check-expiration

sudo openssl x509 -in /etc/kubernetes/pki/apiserver.crt -text