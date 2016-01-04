defmodule Matte do
  def regne do
    {a, _} = IO.gets("Skriv inn ett tall (0 avslutter): ")
      |> String.strip
      |> Integer.parse
    regne(a)
  end

  defp regne(0) do
    IO.puts "Takk for nå."
  end

  defp regne(a) do
    IO.puts "#{a} opphøyd i 2      = " <> Float.to_string(:math.pow(a, 2), decimals: 1)
    IO.puts "Kvaderatroten av #{a} = " <> Float.to_string(:math.sqrt(a), decimals: 3)

    IO.puts "#{a} opphøyd i 2      = #{ :math.pow(a, 2) }"
    IO.puts "Kvaderatroten av #{a} = #{ :math.sqrt(a)   }"
    regne
  end
end

Matte.regne
