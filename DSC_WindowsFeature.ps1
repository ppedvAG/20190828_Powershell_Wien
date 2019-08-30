configuration Ensure-FtpServer
{
    # Benötigtes DSC-Modul importieren!
    Import-DscResource -ModuleName PsDesiredStateConfiguration

    # Zum Abrufen der Knotenliste können Ausdrücke ausgewertet werden.
    # Beispiel: $AllNodes.Where("Role -eq Web").NodeName
    # node ("Server1","Server2","Server3")
    node ("localhost")
    {
        # Ressourcenanbieter aufrufen
        # Beispiel: WindowsFeature, File
        # Rausfinden des FriendlyName über Get-WindowsFeature 
        WindowsFeature Web-Ftp-Server
        {
           Ensure = "Present"
           Name   = "Web-Ftp-Server"
        }     
    }
}


# Einmalig die Konfiguration aufrufen um im Root-Dir eine .MOF-Datei zu erzeugen
Ensure-FtpServer

# Die MOF muss dann mit Start-DscConfiguration -Path "Pfad/zum/Ordner" (in welchem die .MOF-Datei liegt) auf dem Server eingespielt werden
# Start-DscConfiguration -Path "Ordner/mit/MOF-Datei)