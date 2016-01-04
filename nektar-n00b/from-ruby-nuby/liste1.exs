# Lister
fisketyper = ["torsk", "laks", "ørret", "sei"]

# Ved hver endring lages en ny liste.
pizza  = []
pizza = pizza ++ [ "pepperoni" ]
pizza = [ "ananas" | pizza ]
# pizza << :chorizo
pizza =  pizza ++ ~w{kylling biff kjøttboller}

# Manipulering...
fisketyper
  |> Enum.map(&("Jeg liker ikke #{ &1 }.\n"))
  |> IO.puts

min_pizza = List.delete(pizza, "ananas")
ha_paa_min_pizza = Enum.reduce(min_pizza, 
  fn topping, innhold ->
    "#{innhold}, #{topping}"
  end)
IO.puts "Jeg vil ha en pizza med #{ ha_paa_min_pizza } og masse ost!"
