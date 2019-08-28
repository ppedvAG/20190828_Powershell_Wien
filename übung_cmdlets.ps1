# Alle CMDlets mit Nomen "Computer" auflisten
Get-Command -Noun Computer

# Beispiele für Set-Service
Get-Help Set-Service -Examples

# CMDlets von Aliase gerausfinden
Get-Alias dir,cd

# Whatif
Get-ChildItem C:\temp\*.txt -Recurse | Remove-Item -WhatIf