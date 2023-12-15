k create serviceaccount pvviewer

k create clusterrole pvviewer-role --verb=list --resource=persistentvolume ${=DO}

k create clusterrolebinding pvviewer-role-binding --clusterrole=pvviewer-role --serviceaccount=default:pvviewer ${=DO}

k run pvviewer --image=redis ${=DO}