#Import the module needed to generate random numbers
Random

#Generate a random number between 1 and 100
$random = Get-Random -Minimum 1 -Maximum 100

$attempts = 10
$num = 0

while ($random -ne $num -and $attempts -gt 0) {
    $num = Read-Host "Enter a number"
    $num = [int]$num
    $attempts--

    if ($num -eq $random) {
        Write-Host "You guessed the number in $($attempts) attempts!"
    }
    elseif ($num -lt $random) {
        Write-Host "The number is greater. You have $($attempts) attempts remaining."
    }
    else {
        Write-Host "The number is smaller. You have $($attempts) attempts remaining."
    }
}

if ($attempts -eq 0) {
    Write-Host "You ran out of attempts. The random number was $($random)."
}
