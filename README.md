# airflow-infra

Repository ini menangani:

- custom image Airflow 3.0.6
- manifest Kubernetes berbasis Kustomize
- deploy development dan production via GitHub Actions
- secret management berbasis manifest YAML (`secret.yaml`), bukan `kubectl create secret generic`

## Branch

- `dev` → namespace `airflow-dev`
- `prod` → namespace `airflow-prod`

## Repo pasangan

DAG disimpan terpisah di repository `airflow-dags` dan dibaca pod melalui `git-sync`.
