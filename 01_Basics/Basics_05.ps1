#Deklaracja funkcji
function Write-AuthorName {
    Write-Host "Autorem funkcji jest Adam";    
}

#Wywołanie funkcji
Write-AuthorName

#Deklaracja funkcji z parametrem
function Write-MyName {
    param (
        $name
    )
    Write-Host "Witaj $name"
}

#Wywołanie funkcji z parametrem
Write-MyName -name Adam

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