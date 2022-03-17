#Przykład pętli, która zostanie wywołana 10 razy 
for ($index = 0; $index -lt 10; $index++) {
    Write-Host "Przykład implementacji pętli for";
}
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

#Przykład implementacji pętli foreach
foreach($currentFruit in $fruits)
{
    Write-Host "Wybrany owoc to: $currentFruit";
}

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