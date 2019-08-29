# Sortieren
(Get-Process | Sort-Object -Property Handles) | gm

# Measure
# Mit der Angabe des -Property Parameters und einem Eigenschafts-Wert wird mit zusätzlicher Angabe der Attribute
# welche berechnet werden sollen gemessen
(Get-Process | Measure-Object -Property PM -Average -Sum) | gm

(Get-ChildItem "C:\Users\dw2\Documents\*.pdf") | Measure-Object -Property Length -Sum

(Get-ChildItem "C:\Users\dw2\Documents\*.pdf") | Sort-Object -Property Length -Descending | Select-Object FullName,Name,@{N='Dateigröße(MB)';e={('{0:N2} MB' -f ($_.Length/1MB))}} -First 3 | fl

Get-Service | Sort-Object -Property Status | Select-Object @{N='Aktueller Status';e={$_.Status}},@{N='Anzeige-Name';e={$_.DisplayName}},@{N='Dienst-Name';e={$_.Name}} | fl -GroupBy Status | Out-File C:\Users\dw2\Desktop\services_list.txt


Get-Process | Where-Object -FilterScript { $_.Name -like '*svch*' -and $_.Handles -gt 500}

Get-ADUser -Filter 'Surname -like "*Will*"'