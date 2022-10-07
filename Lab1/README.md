# Lab1
The task of this lab is to create an ARM template which:

- Creates an Azure Storage Account (Freetier)
- Creates an Azure Web-App for node.js (Freetier)
- Uses parameters

## How to deploy
Execute the following command:
```
az deployment group create --name mydeployment --resource-group <resource-group-name> --template-file azuredeploy.json --parameters azuredeploy.parameters.json
```
Keep in mind to update the azuredeploy.parameters.json file depending on the name of your resource group and app service plan.

## My own experience
At first, I had to read [how to deploy my first template](https://learn.microsoft.com/en-us/azure/azure-resource-manager/templates/template-tutorial-create-first-template?tabs=azure-powershell). After that, I created a parameter.json file and stored some values in it.
Then I researched how to create a storage account using ARM and found [this tutorial](https://learn.microsoft.com/en-us/azure/templates/microsoft.storage/storageaccounts?pivots=deployment-language-arm-template). The next step was to create a node.js web app.
I used [this microsoft tutorial](https://learn.microsoft.com/en-us/azure/azure-monitor/app/resource-manager-web-app?tabs=json) for this task.
After I had implemented all 3 required tasks, I then tried to deploy the application using my template, only to find out it did not work. The error said, that the name of my server farm is incorrect. After researching what a server farm is, I found out that I had to create an app service plan, which I did. Finally, the template worked and I created my web app and storage account using my template with parameters, which marks the end of this lab assignment.  
Thanks for reading :)
