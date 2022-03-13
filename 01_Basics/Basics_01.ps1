$numberVariable = 10;
$anotherNumberVariables = 0.1;

$textVariable = "Example of text variable";

$variableContainsValueFromOtherVariables = "Value of numberVariable is: $numberVariable";

$sumOfTwoNumerVariables = $numberVariable + $anotherNumberVariables;

$fruits = @(
    "apple",
    "orange",
    "trawberry",
    "pear"
)

$numbers = @(5,10,50,22,11,90);
$anotherArrayOfNumbers = 10..50; #Tworzy tablice wypełnioną liczbami z zakresu od 10 do 50;

Write-Host $numberVariable;
Write-Host $textVariable;
Write-Host $variableContainsValueFromOtherVariables;
Write-Host $sumOfTwoNumerVariables;
Write-Host $fruits;
Write-Host $numbers;