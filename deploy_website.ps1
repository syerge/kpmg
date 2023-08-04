# Install IIS
Install-WindowsFeature -name Web-Server -IncludeManagementTools

# Get the computer name
$computerName = $env:COMPUTERNAME

# Deploy sample website
$indexContent = "Hello from Azure VMSS on computer: $computerName"
Set-Content -Path C:\inetpub\wwwroot\index.html -Value $indexContent