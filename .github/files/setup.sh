helm dependency update

# Setup descheduler
helm upgrade -i descheduler -n kube-system \
  --create-namespace . -f values.yaml

# Setup external secrets (eso)
helm upgrade -i external-secrets -n external-secrets \
  --create-namespace . -f values.yaml

helm upgrade -i external-secrets-scaleway -n external-secrets \
  --create-namespace . -f values.yaml

# Setup network
helm upgrade -i ingress-nginx -n network \
  --create-namespace . -f values.yaml

helm upgrade -i external-dns -n network \
  --create-namespace . -f values.yaml

# Setup SSL
helm upgrade -i cert-manager -n cert-manager \
  --create-namespace . -f values.yaml

helm upgrade -i cert-manager-cloudflare -n cert-manager \
  --create-namespace . -f values.yaml

# Setup apps
helm upgrade -i echo-server -n demo \
  --create-namespace . -f values.yaml

helm upgrade -i nginx-demo -n demo \
  --create-namespace .
