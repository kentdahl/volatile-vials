# La oss skrive ut 7-gange-tabellen
tall = 7

# Elixir har ikke vanlige for-løkker som de fleste andre språk.
tabell = for i <- (1..10) do
  "#{i} gange #{tall} er #{i*tall}\n"
end
IO.puts tabell

# 5-gange-tabellen
tall = 5

# Iterasjon ved bruk av Enum(erable) modulen
(1..10) 
  |> Enum.map(fn(i) ->
      "#{i} gange #{tall} er #{i*tall}\n"
    end)
  |> IO.puts
