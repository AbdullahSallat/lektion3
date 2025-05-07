function Dividera {
    param ($a, $b)
    try {
        $resultat = $a/$b
    
    Write-Host "Resultat: $resultat"
    }
    catch {
        Write-Host "Fel $_"
    }
}

Dividera -a 10 -b 0