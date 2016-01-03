# Tekst kan skrives ut
navn = "Finn"
IO.puts "Jeg heter " <> navn

# Liker du ikke puts?
IO.write "Jeg heter " <> navn <> ".\n"

# Liker du C?
# --- TODO: IO.printf "Jeg heter %s!\n", navn

# Eller motsatt...
"Ikke Bjarne... "     |> IO.puts
"Ikke Jan-Thomas... " |> IO.puts

# Liste av tekst strenger...
["Jeg heter ", navn, "!!!\n"] |> IO.puts

# Tekst-streng interpolering.
"Jeg heter fremdeles #{navn}" |> IO.puts
hyl_navn = "#{ navn |> String.upcase }! " 
"Jeg heter #{ hyl_navn |> String.duplicate(3) }" |> IO.puts
