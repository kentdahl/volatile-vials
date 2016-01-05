# hvis1.exs

# Spør først om alderen.
{alder, _} = Integer.parse(IO.gets("Hvor gammel er du?: "))

if alder < 3 do
  IO.puts "Nå tuller du vel?"
  exit(:shutdown) 
end

if alder >= 18 do
  IO.puts "Du er myndig."
else
  if alder >= 16 do
    IO.puts "Du er lovlig."
  else
    IO.puts "Småen!"
  end
end

drikkevare = 
  if alder >= 60 do
    "Sviskejuice"
  else
    cond do
      alder >= 20 -> "Sprit"
      alder >= 18 -> "Øl og vin"
      true        -> "Brus"
    end        
  end
IO.puts "Kjøp deg litt #{drikkevare}"
