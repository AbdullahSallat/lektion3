function Kvadrat {
    param ($tal)
    return $tal * $tal
}

$resultat = Kvadrat 5

Write-Host "kvadraten är : $resultat"