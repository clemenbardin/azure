az login

# Variables
appName="expressapp$RANDOM"
resourceGroup="express-rg"
location="westeurope"
plan="express-plan"

# Groupe de ressources
az group create --name $resourceGroup --location $location

# Plan App Service Linux
az appservice plan create --name $plan --resource-group $resourceGroup --sku B1 --is-linux

# App Web Node.js
az webapp create --resource-group $resourceGroup --plan $plan \
--name $appName --runtime "NODE|18-lts" --deployment-local-git

# Récupération URL Git
az webapp deployment source config-local-git \
--name $appName --resource-group $resourceGroup
