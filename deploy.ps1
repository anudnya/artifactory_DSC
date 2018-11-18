$RG = "nexusrg"
$location = "centralus"
New-AzureRmResourceGroup -Name $RG -Location $location
New-AzureRmResourceGroupDeployment -Name nexus -ResourceGroupName $RG `
 -TemplateUri "https://raw.githubusercontent.com/sangaml/artifactory_DSC/master/infra.json" `
-TemplateParameterUri "https://raw.githubusercontent.com/sangaml/artifactory_DSC/master/infra.parameters.json"
