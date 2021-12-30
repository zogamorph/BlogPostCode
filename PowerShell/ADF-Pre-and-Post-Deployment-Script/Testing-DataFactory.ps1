. .\DeployDataFactory.ps1

$templateFile = 'MyArmTemplate.json'

Invoke-ADFPreDeploymentStep -armTemplate $templateFile -ResourceGroupName 'rg-adf-dev' -DataFactoryName 'adf-project-dev'

Invoke-ADFPostDeploymentStep -armTemplate $templateFile -ResourceGroupName 'rg-adf-dev' -DataFactoryName 'adf-project-dev' -StartTriggersDeployment $false
