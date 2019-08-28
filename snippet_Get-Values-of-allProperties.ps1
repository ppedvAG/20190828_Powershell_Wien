# Werte aller Eigenschaften eines Objektes holen
(Get-VMHost | gm).Name | ForEach-Object { Write-Host "Prop: $($_) | Wert: " (Get-VMHost)."$($_)" }