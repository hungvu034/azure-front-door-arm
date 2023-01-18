az group create -l CentralUS --name tomcat_group


az deployment group create \
  --name DeployLocalTemplate \
  --resource-group tomcat_group \
  --template-file static-web-app.template.json \
  --verbose

az deployment group create --resource-group tomcat_group \
  --template-file front-door.template.json