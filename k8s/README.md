# affine

## Setup

**NOTE**: abandoning this effort since the helm chart created by the AFFiNE team was not
for public consumption and is for their cloud offering.

### k8s secrets

```shell
# Create secret for database credentials
kubectl create secret generic affine-db-credentials \
  --from-literal=password='CHANGE_THIS_PASSWORD'

# Get Redis password from auto-generated secret
REDIS_PASSWORD=$(kubectl get secret affine-redis -o jsonpath="{.data.redis-password}" | base64 --decode)

# Create secret for Redis credentials
kubectl create secret generic affine-redis-credentials \
  --from-literal=password=$REDIS_PASSWORD
```
