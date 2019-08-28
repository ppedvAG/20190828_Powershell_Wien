# Deklariere Variable x
$x = "Test"

# Verändert die Variable X nicht
function TestFunktion($y) {
    $x = $y
    $x
}

write-host "Außerhalb: $($x)"

#  mit $global: Referenz auf "globale" Variable X
function TestFunktionZwei($y) {
    $global:x = $y
    $x
}

TestFunktion("Übergebener Test")

TestFunktionZwei("Übergebener Test mit 'global'")