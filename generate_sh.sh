#!/bin/bash

# Define the number of files you want to create
NUM_FILES=100

# Define the delete flag (1 to delete files, 0 to keep them)
delete=1

# Function to create files
create_files() {
  for i in $(seq 1 $NUM_FILES)
  do
    cat <<EOF > k8s-default-svc-$i.yaml
apiVersion: argoproj.io/v1alpha1
kind: Application
metadata:
  name: k8sdefaultsvc-$i
  namespace: argocd
spec:
  project: default

  source:
    repoURL: https://github.com/asher-lab/sharding-argocd-test.git
    targetRevision: HEAD
    path: configmaps  # Adjust based on your repo structure

  destination:
    server: REDACTED
    namespace: argocd-1

  syncPolicy:
    automated:
      prune: true
      selfHeal: true
EOF
  done
  echo "$NUM_FILES YAML files created."
}

# Function to delete files if delete=1
delete_files() {
  if [ $delete -eq 1 ]; then
    echo "Deleting files..."
    for i in $(seq 1 $NUM_FILES)
    do
      rm -f k8s-default-svc-$i.yaml
    done
    echo "All files deleted."
  else
    echo "Files are not deleted."
  fi
}

# Create files first
create_files

# Then delete files based on the delete flag
delete_files
---
#!/bin/bash

# Define the number of files you want to create
NUM_FILES=100

# Define the delete flag (1 to delete files, 0 to keep them)
delete=0

# Function to create files
create_files() {
  for i in $(seq 1 $NUM_FILES)
  do
    cat <<EOF > k8s-default-svc-$i.yaml
apiVersion: argoproj.io/v1alpha1
kind: Application
metadata:
  name: k8sdefaultsvc-$i
  namespace: argocd
spec:
  project: default

  source:
    repoURL: https://github.com/asher-lab/sharding-argocd-test.git
    targetRevision: HEAD
    path: configmaps  # Adjust based on your repo structure

  destination:
    server: REDACTED
    namespace: argocd-1

  syncPolicy:
    automated:
      prune: true
      selfHeal: true
EOF
  done
  echo "$NUM_FILES YAML files created."
}

# Function to delete files if delete=1
delete_files() {
  if [ $delete -eq 1 ]; then
    echo "Deleting files..."
    for i in $(seq 1 $NUM_FILES)
    do
      rm -f k8s-default-svc-$i.yaml
    done
    echo "All files deleted."
  else
    echo "Files are not deleted."
  fi
}

# Create files first
create_files

# Then delete files based on the delete flag
delete_files
---
#!/bin/bash

# Define the number of files you want to create
NUM_FILES=100

# Define the delete flag (1 to delete files, 0 to keep them)
delete=0

# Function to create files
create_files() {
  for i in $(seq 1 $NUM_FILES)
  do
    cat <<EOF > c2bfa-$i.yaml
apiVersion: argoproj.io/v1alpha1
kind: Application
metadata:
  name: c2bfa-$i
  namespace: argocd
spec:
  project: default

  source:
    repoURL: https://github.com/asher-lab/sharding-argocd-test.git
    targetRevision: HEAD
    path: configmaps  # Adjust based on your repo structure

  destination:
    server:  REDACTED
    namespace: argocd-1

  syncPolicy:
    automated:
      prune: true
      selfHeal: true
EOF
  done
  echo "$NUM_FILES YAML files created."
}

# Function to delete files if delete=1
delete_files() {
  if [ $delete -eq 1 ]; then
    echo "Deleting files..."
    for i in $(seq 1 $NUM_FILES)
    do
      rm -f c2bfa-$i.yaml
    done
    echo "All files deleted."
  else
    echo "Files are not deleted."
  fi
}

# Create files first
create_files

# Then delete files based on the delete flag
delete_files
---
#!/bin/bash

# Define the number of files you want to create
NUM_FILES=100

# Define the delete flag (1 to delete files, 0 to keep them)
delete=0

# Function to create files
create_files() {
  for i in $(seq 1 $NUM_FILES)
  do
    cat <<EOF > ECFC9-$i.yaml
apiVersion: argoproj.io/v1alpha1
kind: Application
metadata:
  name: ecfc9-$i
  namespace: argocd
spec:
  project: default

  source:
    repoURL: https://github.com/asher-lab/sharding-argocd-test.git
    targetRevision: HEAD
    path: configmaps  # Adjust based on your repo structure

  destination:
    server: REDACTED
    namespace: argocd-1

  syncPolicy:
    automated:
      prune: true
      selfHeal: true
EOF
  done
  echo "$NUM_FILES YAML files created."
}

# Function to delete files if delete=1
delete_files() {
  if [ $delete -eq 1 ]; then
    echo "Deleting files..."
    for i in $(seq 1 $NUM_FILES)
    do
      rm -f ecfc9-$i.yaml
    done
    echo "All files deleted."
  else
    echo "Files are not deleted."
  fi
}

# Create files first
create_files

# Then delete files based on the delete flag
delete_files
