$regPath = "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Windows Search"

$policyValues = @(
    "AllowCortana",                                  # Allow Cortana
    "AllowCortanaAboveLock",                         # Allow Cortana above lock screen
    "AllowCortanaInAADPageOOBE",                     # Allow Cortana Page in OOBE on an AAD account
    "AllowSearchToUseLocation",                      # Allow search and Cortana to use location
    "DisableSearchUI",                               # Fully disable Search UI
    "ConnectedSearchUseWeb",                         # Don’t search the web or display web results in Search
    "ConnectedSearchUseWebOverMeteredConnections"    # Don’t search the web or display web results in Search over metered connections
)

# Ensure the registry path exists before attempting to modify
if (Test-Path $regPath) {
    foreach ($value in $policyValues) {
        if (Get-ItemProperty -Path $regPath -Name $value -ErrorAction SilentlyContinue) {
            Write-Host "Removing policy value: $value"
            Remove-ItemProperty -Path $regPath -Name $value -ErrorAction SilentlyContinue
        }
        else {
            Write-Host "Policy value not found: $value"
        }
    }
}
else {
    Write-Host "Registry path not found: $regPath (no action needed)"
}

Write-Host "`nAll configured policies have been reset to 'Not Configured'."
Write-Host "Run 'gpupdate /force' or restart the PC to apply changes."
