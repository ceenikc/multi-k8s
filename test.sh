gcloud auth activate-service-account --key-file $GOOGLE_AUTH
gcloud config set project multi-k8s-215317
gcloud config set compute/zone asia-south1-a
export SHA=$(git rev-parse HEAD)
echo SHA=$SHA
