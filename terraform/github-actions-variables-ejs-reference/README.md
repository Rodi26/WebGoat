# Référence — GitHub Actions variables (ejs-frog-demo)

Ce répertoire est une **copie** de `ejs-frog-demo/terraform/github-actions-variables/` pour consultation des noms de variables et du pattern `github_actions_variable` au **niveau dépôt**.

**WebGoat** n’utilise pas ce module tel quel : les variables IAP/WIF pour les workflows sont des **variables d’environnement** sur **`artifactory`**, définies dans **`../iap_artifactory_github_env.tf`**.

Pour appliquer ce module contre un dépôt, exécutez-le depuis ce sous-répertoire avec un `terraform.tfvars` adapté (voir `terraform.tfvars.example` d’origine).
