$WhatIfPreference = 1 # 1 = true, 0 = false ...

# Whatif
Get-ChildItem C:\temp\powershell_get-help -Recurse | Where-Object { $_.LastWriteTime -ge (Get-Date).AddMonths(-3) }