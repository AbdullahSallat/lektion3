# programet pingar flera adresser, to-do log lista

# ping något med en funktion try-catch
function testnetwork {
    param ($datornamn)
    try {
        $ping = Test-Connection -ComputerName $datornamn -Count 1 -ErrorAction Stop
        Write-Host "$datornamn är tillgänglig" 
    }
    catch {
        Write-Host "$datornamn är inte tillgänglig"
    }
}
# lista över alla mina adresser, local och non local

$lista = @("localhost", "non-local-host", "8.8.8.8", "aftonbladet.se")

foreach ($datornamn in $lista) {
    testnetwork -datornamn $datornamn
}