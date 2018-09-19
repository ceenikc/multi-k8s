gcloud components update kubectl
gcloud auth activate-service-account --key-file $multi-k8s
gcloud config set project multi-k8s-215317
gcloud config set compute/zone asia-south1-a
