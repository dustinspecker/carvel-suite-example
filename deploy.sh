#!/bin/bash
set -ex

export PATH=$PATH:$PWD/bin

vendir sync --locked

# clean previously rendered files
rm -rf ./deploy/rendered

while IFS= read -r -d '' app_directory ; do
  app_name="$(basename "$app_directory")"

  mkdir "./deploy/rendered/$app_name" \
    --parents

  # render Helm templates if Chart.yaml file is found
  SYNCED_DIR="./deploy/synced/$app_name"
  if [ -f "./deploy/synced/$app_name/Chart.yaml" ]; then
    tmp_helm_rendered="$(mktemp --suffix .yaml)"
    helm template "$app_name" "./deploy/synced/$app_name" > "$tmp_helm_rendered"

    SYNCED_DIR="$tmp_helm_rendered"
  fi

  ytt \
    --file "$SYNCED_DIR" \
    --file "./deploy/overlays/$app_name" \
    --ignore-unknown-comments \
  > "./deploy/rendered/$app_name/deploy.yaml"

done < <(find ./deploy/synced/* -maxdepth 0 -type d -print0)

kapp app-group deploy \
  --directory ./deploy/rendered \
  --group dev \
  --yes

