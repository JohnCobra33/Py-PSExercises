#Prompt the user to enter as many words as they want
$word = Read-Host "Enter as many words as you'd like"

#Count and display the number of words
$numberOfWords = ($word -split '\s+' | Measure-Object).Count
Write-Host "There are $numberOfWords words"
