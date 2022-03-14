$firstNumber = 10;
$secondNumber = 5;

if($firstNumber -gt $secondNumber)
{
    Write-Host "Liczba $firstNumber jest większa od liczby $secondNumber";
}
else {
    Write-Host "Liczba $firstNumber jest mniejsza od liczby $secondNumber";
}

$firstNumber -eq $secondNumber
$firstNumber -ne $secondNumber
$firstNumber -gt $secondNumber
$firstNumber -ge $secondNumber
$firstNumber -lt $secondNumber
$firstNumber -le $secondNumber