
#Deklaracja obiektu
$dog = [PSCustomObject]@{
    Name = "Mike";
    Age = 12;
    Breed = "Husky"; 
}

#Pobranie wartości właściwości obiektu
$dogName = $dog.Name;

Write-Host "Imię psa: $dogName";

#Modyfikacja wartości właściwości obiektu
$dog.Name = "Haki";

$dogName = $dog.Name;

Write-Host "Imię psa: $dogName";

