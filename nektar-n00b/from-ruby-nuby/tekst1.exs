# Tekst-strenger er UTF-8 binær data i Elixir
navn = "Ruby"
is_binary(navn) #=> true

# Tekst kan settes sammen...
fornavn   = "Ola"
etternavn = "Nordmann"
fullt_navn = etternavn <> ", " <> fornavn 
IO.puts fullt_navn #=> "Nordmann, Ola"

#...dupliseres...
String.duplicate("Ah!", 2) <> " Tsjo!" #=> "Ah!Ah! Tsjo!"

#...manipuleres...
String.replace("Karakter fire", "fire", "en") #=>"Karakter en"
String.to_float "14.99"  #=> 14.99

#...inspiseres...
String.contains? "TEAMWORK", "I"  #=> false
#"Kulturuke".index("tur")  #=> 3 