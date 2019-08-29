# Funktions-Kopf initiiert mit Schlüsselwort "function" -> Bezeichner VERB-NOUN (GET/SET/REMOVE/ADD - FILE/LOG/..)
function Get-EventLogCustom {
    # Default-Switche von Powershell (ErrorAction, WhatIf, usw)
    [CmdletBinding()]

    # Parameter-Satz
    Param(
        [Parameter(Mandatory=$true)]
        [string]$logName,

        # Optional, da Defaultvalue
        [string]$computerName = $env:COMPUTERNAME,
        [int]$eventID = 4624,
        [ValidateRange(1,100)]
        [int]$selectFirstCount = 10
    )

    # Eigentliche Operation  
    try
    {
        Get-EventLog -LogName $logName -ComputerName $computerName | Where-Object -Property EventID -EQ $eventID | Select-Object -First $selectFirstCount
    }
    catch [System.Exception]
    {
        write-host "$($Error)"
    } 
}

# Logname = variabel
# ComputerName = variabel
# Where-Property = variabel
# Select-First = variabel


# https://docs.microsoft.com/en-us/dotnet/api/system.net.ipaddress?view=netframework-4.8
$ipadresse = [ipaddress]'192.168.252.26'
