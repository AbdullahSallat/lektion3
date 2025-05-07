# funktion som hälsar på användare 
function Hälsa {
    param ($namn)
    Write-Host "Hej $namn"
}

# loop som hälsa på all
function HälsaAlla {
    param (
        $namnlista
    )
    foreach ($namn in $allnamn){
        Hälsa -namn $namn
    }
}

# array med alla namn
$allnamn = @("Alice","Pop")
HälsaAlla -namnlista $allanamn