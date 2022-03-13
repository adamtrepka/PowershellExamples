# Podstawy

## Zmienne
Deklaracja każdej zmiennej w PowerShell rozpoczyna się od znaku dolara `$` oraz nazwy opisującej zawartość zmiennej.
## Przykład implementacji zmiennej liczbowej
```ps
$numberVariable = 10;
$anotherNumberVariables = 0.1;
```
## Przykład implementacji zmiennej tekstowej
```ps
$textVariable = "Example of text variable";
```
## Operacje na zmiennych
### Tworzenie zmiennej zawierającej wartość innej zmiennej
```ps
$variableContainsValueFromOtherVariables = "Value of numberVariable is: $numberVariable";
```
### Dodawanie wartości dwóch zmiennych
```ps
$sumOfTwoNumerVariables = $numberVariable + $anotherNumberVariables;
```

## Tablice
Przechowują kolekcje zmiennych jednego typu
### Przykład implementacji tablicy wartości tekstowych
```ps
$fruits = @(
    "apple",
    "orange",
    "trawberry",
    "pear"
)
```
### Przykład implementacji tablicy wartości liczbowych
```ps
$numbers = @(5,10,50,22,11,90);
$anotherArrayOfNumbers = 10..50; #Tworzy tablice wypełnioną liczbami z zakresu od 10 do 50;
```

## Wyświetlanie zawartości zmiennych
W języku PowerShell do wyświetlania zawartości zmiennych używamy polecenia `Write-Host`
### Przykład wyświetlenia zawartości zmiennej
```ps
Write-Host $numberVariable;
Write-Host $textVariable;
Write-Host $variableContainsValueFromOtherVariables;
Write-Host $sumOfTwoNumerVariables;
Write-Host $fruits;
Write-Host $numbers;
```
Do wyczyszczenia zawartości konsoli używamy polecenia `Clear-Host` lub `cls`

## [Implementacja przykładów z tego modułu](Basics_01.ps1)