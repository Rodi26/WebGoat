# GCP Workload Identity Federation (stack autonome)

Ce répertoire appelle le module réutilisable **`../modules/gcp-wif-github`**.

- **Uniquement GCP** : `terraform init` puis `terraform apply` ici (credentials GCP / ADC requis).
- **GCP + variables IAP + secrets GitHub** sur l’environnement `artifactory` : préférer **`terraform apply` à la racine `terraform/`** avec les variables documentées dans `gcp_wif_github.tf` (secrets WIF gérés par Terraform quand les valeurs sont fournies).

Sorties utiles : `workload_identity_provider`, `service_account_email`.
