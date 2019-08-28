# Init
$wuauserv = Get-Service -Name wuauserv
$diensteListe = Get-Service

# Dienste
Get-Service -Name $wuauserv.Name | Stop-Service




if((Get-Service -Name wuauserv).Status -eq "Stopped") {
    Start-Service -Name wuauserv
} else {
    Stop-Service -Name wuauserv
}


if($wuauserv.Status -ne "Running") {
    # Start-Methode direkt am ServiceController-Objekt
    $wuauserv.Start() # Dienst starten wenn gestoppt
    $wuauserv.Refresh() # Status aktualisieren
    $wuauserv.Status() # Status ausgeben 

    # Start über Commandlet
    Start-Service -Name $wuauserv.Name
}

$diensteListe | % { Write-Host "Dienst $($_.Name) hat Status $($_.Status)" }

