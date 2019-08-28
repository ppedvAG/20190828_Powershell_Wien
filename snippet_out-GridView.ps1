# Out-GridView
# 

# Finde Dienste mit enthaltenem String
(Get-Service) | Where-Object { $_.Name -like '*wu*' }

Get-Service | Out-GridView -OutputMode Multiple |% {
    if($_.Status -eq "Stopped") {
        $_.Start()
        $_.Refresh()
        Write-Host "Der Dienst $($_.DisplayName) wurde gestartet."
        # Write-Host "Der Dienst " + $_.DisplayName + " wurde gestartet."
        # Write-Host "Der Dienst {0} wurde gestartet." -f $_.DisplayName
    } else {
        Write-Host "Der Dienst $($_.DisplayName) ist bereits gestartet ..."
    }
     
}
