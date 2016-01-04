# ordbok1.exs

ordbok = %{
  "elixir"  => "Magisk nektar eller språk",
  "ruby"    => "Edelsten eller språk",
  "python"  => "Reptil eller språk",
  :pi       => "Matematisk symbol",
  alpha:    "Gresk symbol for bokstaven A",
}

# Oppslag 
ordbok["ruby"]
ordbok[:alpha]
ordbok[:beta]   #=> nil # fordi nøkkelen ikke finnes
ordbok[:pi]
ordbok["pi"]    #=> nil # fordi atom og streng er forskjellige ting.
ordbok.pi

IO.inspect ordbok

ny_ordbok = ordbok 
  |> Map.put("python", "Mener du som i Monty Python?")
  |> Map.put(:pi, :math.pi)
  |> Map.put(:e,  :math.exp(1))

IO.inspect ny_ordbok

ny_ordbok 
  |> Enum.map(fn {ord, beskrivelse} ->
      "Ordet '#{ord}' er definert som: #{beskrivelse}\n"
    end)
  |> IO.puts
