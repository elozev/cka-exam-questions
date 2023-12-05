1. kubectl config get-contexts -oname > /opt/course/1/contexts

2. kubectl config current-context > /opt/course/1/context_default_kubectl.sh

3. cat ~/.kube/config | grep current-context > /opt/course/1/context_default_no_kubectl.sh