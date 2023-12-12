cd /etc/kubernetes/pki

sudo openssl x509 -in apiserver-kubelet-client.crt -text

Issuer: CN = kubernetes

X509v3 Extended Key Usage:
TLS Web Client Authentication