# Azure Translator Service PowerShell Scripts

This folder contains PowerShell scripts for working with Azure Translator service. These scripts have been converted from their original bash versions to work natively in PowerShell on Windows.

## Files

- **initialize_variables.ps1** - Sets up environment variables for the Azure Translator service
- **detect.ps1** - Detects the language of a given text
- **translate.ps1** - Translates text from Japanese to English
- **transliterate.ps1** - Transliterates Japanese text from Jpan script to Latin script

## Usage

1. First, run the initialization script to set up your environment variables:
   ```powershell
   .\initialize_variables.ps1
   ```

2. Then run any of the other scripts:
   ```powershell
   .\detect.ps1
   .\translate.ps1
   .\transliterate.ps1
   ```

## Requirements

- PowerShell 5.1 or later
- Valid Azure Translator service subscription key
- Internet connectivity

## Key Differences from Bash Scripts

- Uses `$env:` syntax for environment variables instead of `${}`
- Uses `Invoke-RestMethod` instead of `curl`
- Uses PowerShell hashtables for headers
- Includes proper error handling with try-catch blocks
- Uses `Write-Host` and `Write-Error` for output
- JSON response formatting with `ConvertTo-Json`

## Security Note

The API key is currently hardcoded in the `initialize_variables.ps1` script. For production use, consider using:
- Azure Key Vault
- Environment variables set at the system level
- PowerShell secure strings
- Azure Managed Identity (when running in Azure)
