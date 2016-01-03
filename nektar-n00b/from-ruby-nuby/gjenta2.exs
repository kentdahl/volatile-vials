# Litt mer gøy med matte.
# a = nil

# until - gjenta inntil noe blir sant
# until a == 0
{a, _} = IO.gets("Skriv inn ett tall (0 avslutter): ") 
    |> String.strip |> Integer.parse
  IO.puts "#{a} opphøyd i 2      = " <> Float.to_string(:math.pow(a, 2), decimals: 1)
  IO.puts "Kvaderatroten av #{a} = " <> Float.to_string(:math.sqrt(a), decimals: 3)

  IO.puts "#{a} opphøyd i 2      = #{ :math.pow(a, 2) }"
  IO.puts "Kvaderatroten av #{a} = #{ :math.sqrt(a)   }"
