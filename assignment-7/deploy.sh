echo "Loading environment variables..."
set -o allexport
source .env
ZOOKEEPER_DEPLOYMENT_NAME=$(echo "$ZOOKEEPER_DEPLOYMENT_NAME" | tr -d '[:space:]')
ZOOKEEPER_PORT=$(echo "$ZOOKEEPER_PORT" | tr -d '[:space:]')
set +o allexport

echo "Substituting template variables and applying manifests..."
envsubst < templates/zookeeper-deployment.yaml | kubectl apply -f -
envsubst < templates/zookeeper-service.yaml | kubectl apply -f -

echo "Deployment complete."
