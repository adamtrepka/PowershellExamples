# Podstawy - ćwiczenia

## 0. Spis treści
1. [Przygotować funkcje do generowania losowego ciągu liczb](#1-przygotować-funkcje-do-generowania-losowego-ciągu-liczb)

## 1. Przygotować funkcje do generowania losowego ciągu liczb
Korzystając z dostępnych materiałów zaimplementuj funkcję `Get-ArrayOfRandomNumbers`. Funkcja powinna przyjmować następujące parametry: 
* Długość zwracanego ciągu liczbowego,
* Minimalna wartość znajdująca się w ciągu liczbowym,
* Maksymalna wartość znajdująca się w ciągu liczbowym.
Funkcja powinna zwracać tablicę liczb o zadeklarowanej długości oraz zawierać liczby z podanego w parametrach zakresu.

### Materiały do wykorzystania
 * [Dokumentacja metody Get-Random](https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.utility/get-random?view=powershell-5.1)
 * [Dokumentacja funkcji](https://docs.microsoft.com/en-us/powershell/scripting/learn/ps101/09-functions?view=powershell-5.1)

 ### Rezultat działania funkcji
 ```ps
$result = Get-ArrayOfRandomNumbers -ArrayLength 5 -Minimum 0 -Maximum 5;
Write-Host "Wygenerowana tablica: $result";
#Wygenerowana tablica: 0 3 2 0 0

$result = Get-ArrayOfRandomNumbers -ArrayLength 10 -Minimum -10 -Maximum 50;
Write-Host "Wygenerowana tablica: $result";
#Wygenerowana tablica: 25 21 2 40 23 19 32 30 46 38
 ```