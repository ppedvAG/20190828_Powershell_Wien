# Switch-Konstrukt
# Bei determinierten Werten (wenn bekannt sind welche Werte eine Variable beinhalten kann)
$a = 0

switch ($a)
{
    1 {"Die Farbe ist rot"}
    2 {"Die Farbe ist orange"}
    3 {"Die Farbe ist blau"}
    4 {"Die Farbe ist gelb"}
    5 {"Die Farbe ist grün"}
    Default {"farblos ;)"}
}

# IF-ELSE Konstrukt bei undeterminierten Werten / Abfragen mit boolschen Rückgabewerten 

# Foreach-Schleife / ForEach-Object
# Schleife = schneller, mehr Speicherplatz
# Commandlet = langsamer, weniger Speicherplatz
Get-Service | ForEach-Object Name             

$dienste = Get-Service 

foreach($dienst in $dienste) {
    $dienst.Name
}      


# Break / Continue
for ($i = 0; $i -lt 99; $i++)
{ 
    $i
    if($i -eq 4) { "starte schleife erneut"; continue }

    if($i -eq 5) { "verlasse schleife"; break }
}        


$i = 1

while($i -lt 10) {
    Write-Host "$($i*2)"; 
    $i++;
}                                                                               