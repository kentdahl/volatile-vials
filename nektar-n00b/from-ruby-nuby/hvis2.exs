# hvis2.exs

svar = String.downcase(String.strip(IO.gets("Liker du Elixir? [ja/nei]:")))
# BEDRE: svar = IO.gets("Liker du Elixir? [ja/nei]:")  |> String.strip |> String.downcase

if svar == "ja" do
  IO.puts("Jeg liker også Elixir!")
end

# 'unless' er det motsatte av 'if'
unless svar == "nei" do
  IO.puts "La oss kode litt Elixir."
end

# men bør brukes forsiktig
unless String.first(svar) == "j" do
  IO.puts "Mener du at du ikke liker Elixir?"
else
  IO.puts "Doble negasjoner er forvirrende..."
end
