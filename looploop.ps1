# funktion som hälsar på användare 
function Hälsa {
    param ($namn)
    Write-Host "Hej $namn"
}

# loop som hälsa på all
function HälsaAlla {
    param (
        $allanamn
    )
    
}

# array med alla namn
$allanamn = @("Alice", "Pop")