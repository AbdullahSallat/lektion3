# funktion try-catah-finally

function Tal_test{
    param ($tal)
    try {
        if ($tal -lt 0) {
            throw "Stöd saknas för negativa tal"
        }
        Write-Host "Talet är: $tal"
    }
    catch {
        Write-Host "fel inträffades: $_"
        }
    finally {
        Write-Host " Funktionen avslutar"
        }
}

Tal_test -tal 1