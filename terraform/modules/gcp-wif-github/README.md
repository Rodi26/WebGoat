# Module `gcp-wif-github`

Pool WIF, provider OIDC GitHub, compte de service et IAM pour `generateIdToken` (IAP).

Consommé par :

- la racine `terraform/` (`gcp_wif_github.tf`) si `create_gcp_wif_infrastructure = true` ;
- le stack autonome `terraform/gcp-wif-github/`.
