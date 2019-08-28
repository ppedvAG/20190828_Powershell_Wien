$WhatIfPreference = 0

# JSON-File einlesen und in ein Objekt speichern mit ConvertFrom-Json (erwartet JSON-String)

# $uk8slog01 = Get-Content "path/to/file.json" | ConvertFrom-Json

# JSON-Datei erzeugen mit ConvertTo-Json (erzeugt JSON-String)

$datumJson = Get-Date | Select-Object -Property * | ConvertTo-Json | Out-File "C:\users\dw2\Desktop\datum.json"

# XML-Datei erzeugen mit ConvertTo-XML (erzeugt XML-Objekt)
$datumXml = Get-Date | Select-Object -Property * | ConvertTo-Xml

# Eigenschaft "InnerXML" angeben um kein XML-Objekt zu schreiben sondern das eigentliche XML als String
$datumXml.InnerXml | Out-File "C:\users\dw2\Desktop\datum.xml"

# XML Importieren
$importedXml = Get-Content "C:\users\dw2\Desktop\datum.xml" | ConvertTo-XML