# Werte aller Eigenschaften eines Objektes holen
(Get-VMHost | gm).Name | ForEach-Object { Write-Host "Prop: $($_) | Wert: " (Get-VMHost)."$($_)" }

# Kürzere Variante
Write-Host (Get-VMHost | gm).Name | Select -ExpandProperty $_