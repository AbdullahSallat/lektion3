# programet pingar flera adresser, to-do log lista

$loggfil = "pinglogg.txt" #spara våra forsök

# ping något med en funktion try-catch
function testnetwork {
    param ($datornamn)
    try {
        $ping = Test-Connection -ComputerName $datornamn -Count 1 -ErrorAction Stop
        $medalande = "$datornamn är tillgänglig" 
        Write-Host $medalande
        Add-Content -Path $loggfil -Value $medalande
    }
    catch {
        $medalande = "$datornamn är inte tillgänglig"
        Write-Host $medalande
        Add-Content -Path $loggfil -Value $medalande
    }
}
# lista över alla mina adresser, local och non local

$lista = @("localhost", "non-local-host", "8.8.8.8", "aftonbladet.se")

foreach ($datornamn in $lista) {
    testnetwork -datornamn $datornamn
    
}