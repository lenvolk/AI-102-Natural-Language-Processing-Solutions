# PowerShell script to detect language using Azure Translator service

$headers = @{
    'Ocp-Apim-Subscription-Key' = $env:AI_SERVICE_KEY
    'Ocp-Apim-Subscription-Region' = $env:AI_SERVICE_LOCATION
    'Content-Type' = 'application/json; charset=UTF-8'
}

$body = '[{ "Text" : "こんにちは、みんな！ お会いできてうれしいです。 あなたが住んでいる場所の天気はどうですか？" }]'

$uri = "https://api.cognitive.microsofttranslator.com/detect?api-version=3.0"

try {
    $response = Invoke-RestMethod -Uri $uri -Method POST -Headers $headers -Body $body
    $response | ConvertTo-Json -Depth 3
}
catch {
    Write-Error "Failed to detect language: $_"
    exit 1
}
