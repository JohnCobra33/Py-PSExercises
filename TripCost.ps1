$students = Read-Host "Enter number of students"

# Convert the input to a number
$students = [int]$students

# Initialize the condition
if ($students -ge 100) {
    Write-Host "Each student must pay 65€, a total of $($students * 65)€"
} elseif ($students -gt 49) {
    Write-Host "Each student must pay 70€, a total of $($students * 70)€"
} elseif ($students -gt 29) {
    Write-Host "Each student must pay 95€, a total of $($students * 95)€"
} else {
    $studentspay = [math]::Round(4000 / $students, 2)
    Write-Host "Each student must pay $studentspay and the cost would be €4000"
}
