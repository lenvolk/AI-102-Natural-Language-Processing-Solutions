# PowerShell script to initialize environment variables for Azure Translator service

$env:AI_SERVICE_KEY = ''
$env:AI_SERVICE_LOCATION = 'westus'

Write-Host "KEY = $env:AI_SERVICE_KEY"
Write-Host "LOCATION = $env:AI_SERVICE_LOCATION"
