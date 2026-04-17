# Terraform — Workload Identity Federation (GitHub Actions)

Copie du module **ejs-frog-demo** (`ejs-frog-demo/terraform/gcp-wif-github/`) pour provisionner le **même type** de ressources GCP (pool WIF, provider OIDC GitHub, compte de service, bindings IAM).

## Réutiliser un environnement GCP déjà créé (ex. pour ejs-frog-demo)

Si le pool WIF existe déjà dans le projet :

- Récupérez les valeurs déjà utilisées comme secrets GitHub **`WORKLOAD_IDENTITY_PROVIDER`** et **`GCP_WIF_SERVICE_ACCOUNT`** (ou `terraform output` depuis l’état du module d’origine).
- Vérifiez la **condition d’attribut** du provider WIF : si `restrict_to_single_repo = true` avec un seul dépôt (ex. `org/ejs-frog-demo`), les workflows **WebGoat** ne recevront pas de jeton OIDC tant que la condition n’inclut pas **`Rodi26/WebGoat`** (ou que vous n’élargissez pas la règle au niveau org). À ajuster dans GCP ou en réappliquant ce module avec `github_repo_full` vide / `restrict_to_single_repo = false` selon votre politique.

## Utilisation (nouveau déploiement dans ce répertoire)

```bash
cd terraform/gcp-wif-github
cp terraform.tfvars.example terraform.tfvars
# Éditer terraform.tfvars (project_id, github_org, …)

terraform init
terraform plan
terraform apply
```

Copier les **outputs** vers les **secrets** de l’environnement GitHub **`artifactory`** :

| Output Terraform | Secret GitHub |
|------------------|---------------|
| `workload_identity_provider` | `WORKLOAD_IDENTITY_PROVIDER` |
| `service_account_email` | `GCP_WIF_SERVICE_ACCOUNT` |

## Variables GitHub Actions (WebGoat)

Les **variables** IAP (`IAP_USE_WIF`, `GCP_PROJECT_ID`, `JF_HOST`, `IAP_OAUTH_CLIENT_ID`, etc.) sont gérées par le dépôt WebGoat dans **`iap_artifactory_github_env.tf`** (variables d’environnement), pas par le module **`github-actions-variables`** d’ejs (variables au niveau dépôt).

Référence copiée dans ce repo : **`../github-actions-variables-ejs-reference/`** (lecture seule / comparaison).

## Ce que Terraform ne fait pas

- **IAP** : ajouter le compte de service comme principal autorisé sur la ressource protégée par IAP (load balancer, etc.).
- **OAuth Client ID IAP** : valeur à copier depuis la console GCP (Credentials) ou l’écran IAP.
