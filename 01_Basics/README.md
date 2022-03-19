# Podstawy
## 0. Spis treści

1. [Zmienne](#1-zmienne)
1. [Instrukcje warunkowe](#2-instrukcje-warunkowe)
1. [Pętle](#3-pętle)
1. [Obiekty](#4-obiekty)
1. [Funkcje](#5-funkcje)
## 1. Zmienne
Deklaracja każdej zmiennej w PowerShell rozpoczyna się od znaku dolara `$` oraz nazwy opisującej zawartość zmiennej.
### Przykład implementacji zmiennej liczbowej
```ps
$numberVariable = 10;
$anotherNumberVariables = 0.1;
```
### Przykład implementacji zmiennej tekstowej
```ps
$textVariable = "Example of text variable";
```
### Operacje na zmiennych
#### Tworzenie zmiennej zawierającej wartość innej zmiennej
```ps
$variableContainsValueFromOtherVariables = "Value of numberVariable is: $numberVariable";
```
#### Dodawanie wartości dwóch zmiennych
```ps
$sumOfTwoNumerVariables = $numberVariable + $anotherNumberVariables;
```

### Tablice
Przechowują kolekcje zmiennych jednego typu
#### Przykład implementacji tablicy wartości tekstowych
```ps
$fruits = @(
    "apple",
    "orange",
    "strawberry",
    "pear"
)
```
#### Przykład implementacji tablicy wartości liczbowych
```ps
$numbers = @(5,10,50,22,11,90);
$anotherArrayOfNumbers = 10..50; #Tworzy tablice wypełnioną liczbami z zakresu od 10 do 50;
```

### Wyświetlanie zawartości zmiennych
W języku PowerShell do wyświetlania zawartości zmiennych używamy polecenia `Write-Host`
#### Przykład wyświetlenia zawartości zmiennej
```ps
Write-Host $numberVariable;
Write-Host $textVariable;
Write-Host $variableContainsValueFromOtherVariables;
Write-Host $sumOfTwoNumerVariables;
Write-Host $fruits;
Write-Host $numbers;
```
Do wyczyszczenia zawartości konsoli używamy polecenia `Clear-Host` lub `cls`

### [Implementacja przykładów z tego modułu](Basics_01.ps1)

## 2. Instrukcje warunkowe 
Element języka programowania, który pozwala na wykonanie różnych instrukcji w zależności od tego czy zdefiniowane przez programistę wyrażenie logiczne jest prawdziwe, czy fałszywe. 

```ps
#Przykład wykorzystania instrukcji warunkowej w języku PowerShell

$firstNumber = 10;
$secondNumber = 5;

if($firstNumber -gt $secondNumber)
{
    Write-Host "Liczba $firstNumber jest większa od liczby $secondNumber";
}
```
### Operatory porównania
Służą do budowanie wyrażeń logicznych wykorzystywanych w instrukcji warunkowej.

| Operator | Opis                           |
| ---------| ------------------------------ |
| `-eq`    | Wartości są równe              |
| `-ne`    | Wartości nie są równe          |
| `-gt`    | Wartość jest większa           |
| `-ge`    | Wartość jest większa lub równa |
| `-lt`    | Wartość jest mniejsza          |
| `-le`    | Wartość jest mniejsza lub równa|

### Składnia instrukcji warunkowej
1. Instrukcje warunkową rozpoczynamy od słowa kluczowego `if`. 
2. Następnie w nawiasach okrągłych zapisujemy wyrażenie logiczne, które musi zostać spełnione aby został wykonany np. `($firstNumber -gt $secondNumber)`. 
3. Następnie w nawiasach klamrowych zapisujemy kod, który podlega instrukcji warunkowej np. 
```ps
{
    Write-Host "Liczba $firstNumber jest większa od liczby $secondNumber";
}
```
4. Istnieje możliwość wykorzystania słowa kluczowego `else`. Umożliwia ono określenie fragmentu kodu, który zostanie wykonany jeżeli wcześniejszy warunek **nie zostanie** spełniony np.
```ps
$firstNumber = 10;
$secondNumber = 5;

if($firstNumber -gt $secondNumber)
{
    Write-Host "Liczba $firstNumber jest większa od liczby $secondNumber";
}
else {
    Write-Host "Liczba $firstNumber jest mniejsza od liczby $secondNumber";
}
```
### [Implementacja przykładów z tego modułu](Basics_02.ps1)

## 3. Pętle
Umożliwia cykliczne wykonywanie ciągu instrukcji określoną liczbę razy, do momentu zajścia pewnych warunków, dla każdego elementu kolekcji lub w nieskończoność.

### Pętla FOR
Instrukcja umożliwia utworzenie pętli, która uruchamia fragment programu, jeżeli zostaje spełniony określony warunek.

#### Składnia pętli FOR

```ps
for (<Init>; <Condition>; <Repeat>)
{
    <Statement list>
}
```

1. Pętle rozpoczynamy od słowa kluczowego `for`.
2. Następnie w nawiasach okrągłych określamy 3 następujące parametry oddzielone symbolem średnika `';'`:
    1. `<init>` - Polecenie wywoływane przed uruchomieniem pętli np. inicjacja zmiennej z wartością początkową `$index = 0`.
    2. `<Condition>` - Warunek, który zostanie sprawdzony przy każdej iteracji pętli. Jeżeli warunek zostanie spełniony to określony fragment programu zostanie ponownie wykonany np. `$index < 10`
    3. `<Repeat>` - Polecenie wykonywane za każdym razem gdy pętla zostanie powtórzona np. zwiększenie wartości zmiennej zadeklarowanej w pierwszym parametrze `$index++`.
    4. `<Statement list>` - Instrukcje, które mają zostać wykonane przy każdym wywołaniu pętli.
#### Przykład implementacji pętli FOR
```ps
#Przykład pętli, która zostanie wywołana 10 razy 
for ($index = 0; $index -lt 10; $index++) {
    Write-Host "Przykład implementacji pętli for";
}
```

```ps
#Przykład wykorzystania pętli for do pobierania poszczególnych elementów tablicy

$fruits = @(    #Deklaracja tablicy
    "apple",
    "orange",
    "strawberry",
    "pear"
)

for ($index = 0; $index -lt $fruits.Count; $index++) { #Właściwość "Count" zwraca liczbę elementów tablicy
    $currentFruit = $fruits[$index]; #W celu pobrania pojedynczego elementu tablicy należy w nawiasach kwadratowych podać indeks, pod którym się znajduje.
    Write-Host "Wybrany owoc to: $currentFruit";
}
```

### Pętla FOREACH
Instrukcja umożliwia utworzenie pętli, która pozwoli na przejście po wszystkich elementach tabeli.

#### Przykład implementacji pętli FOREACH
```ps
foreach($currentFruit in $fruits)
{
    Write-Host "Wybrany owoc to: $currentFruit";
}
```

### Słowo kluczowe BREAK
Instrukcja `break` może zostać zastosowana jeżeli chcemy przerwać działanie pętli.

#### Przykład wykorzystania słowa kluczowego BREAK
```ps
#Przykład wykorzystania słowa kluczowego break. 
#Jeżeli pobrana wartość z tabeli będzie równa "strawberry" to wyświetl komunikat i przerwij działanie pętli.
foreach($currentFruit in $fruits)
{
    if($currentFruit -eq "strawberry")
    {
        Write-Host "Wybrany owoc to: $currentFruit";
        break;
        Write-Host "Ten komunikat nigdy nie zostanie wyświetlony";
    }
}
```
### [Implementacja przykładów z tego modułu](Basics_03.ps1)

## 4. Obiekty
Obiekt ma za zadanie opisać wybrany fragment rzeczywistości. Obiekty zawierają w sobie właściwości mające na celu opisać wybrane cechy danego obiektu. Na przykład chcąc zaimplementować obiekt opisujący psa możemy opisać go za pomocą szeregu właściwości takich jak imię, rasa, wiek itp.

### Składnia obiektu w języku PowerShell
```ps
$firstDog = [PSCustomObject]@{
    Name = "Mike";
    Age = 12;
    Breed = "Husky"; 
    #<property> = <value>;
}
```
1. Deklarujemy zmienną do której przypisany zostanie obiekt np. `$firstDog`
2. Do zmiennej przypisujemy obiekt korzystając z podanej składni `[PSCustomObject]@{}`.
3. Uzupełniamy właściwości obiektu korzystając ze składni:
    * `<property>` - Nazwa właściwości.
    * `<value>` - Wartość właściwości.

### [Implementacja przykładów z tego modułu](Basics_04.ps1)

## 5. Funkcje
Funkcją nazywamy fragment kodu, który wykonuje konkretne zadanie.

### Składnia funkcji 
```ps
#Deklaracja funkcji
function Write-AuthorName {
    Write-Host "Autorem funkcji jest Adam";    
}

#Wywołanie funkcji
Write-AuthorName
```

1. Deklaracje funkcji rozpoczynamy od słowa kluczowego `function`.
2. Następnie podajemy nazwę naszej funkcji np. `Write-AuthorName`.
3. Kolejnym krokiem jest wprowadzenie kodu funkcji.

### Przekazywanie parametrów do funkcji
Chcąc przekazać parametr do funkcji należy wykorzystać słowo kluczowe `param`. Następnie w nawiasach okrągłych podajemy nazwy parametrów, które chcemy wykorzystać w funkcji.
```ps
#Deklaracja funkcji z parametrem
function Write-MyName {
    param (
        $name
    )
    Write-Host "Witaj $name"
}

#Wywołanie funkcji z parametrem
Write-MyName -name Adam
```

### Zwracanie wartości przez funkcję
Istnieje możliwość zwrócenia rezultatu funkcji do późniejszego wykorzystania. W tym celu należy wykorzystać słowo kluczowe `return`.

```ps
#Deklaracja funkcji zwracającej wartość
function Get-ArrayOfRandomNumbers
{
    param(
        $arrayLength = 10 #Można przypisać domyślną wartość parametru.
    )

    $result = @();

    for ($i = 0; $i -lt $arrayLength; $i++) {
        #Wylosuj liczbę z zakresu od -10 do 10 oraz dodaj jej wartość do tablicy
        $result += Get-Random -Minimum -10 -Maximum 10; 
    }

    return $result;
}

#Wywołanie funkcji zwracającej wartość
$randomArray = Get-ArrayOfRandomNumbers -arrayLength 5
Write-Host $randomArray;
```

### [Implementacja przykładów z tego modułu](Basics_05.ps1)