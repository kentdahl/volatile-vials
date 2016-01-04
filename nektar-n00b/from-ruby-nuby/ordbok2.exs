# Nøsting av maps
treet = %{
  rot: %{
    stamme: %{
      grener: [
        %{blader: "grønne", knopper: "spirende"},
        %{blader: "gule"},
        %{blader: "røde",   bladlus: "døende"},
        %{blader: "brune"},
        %{blader: false, insekter: nil},
        %{"snø": "kald"},
      ]
    }
  }
}

IO.puts "Bladene på treet har gjennom året"
grener = treet[:rot][:stamme][:grener]
dikt = 
  for gren <- grener do
    kvister = for {key, verdi} <- gren do
                if verdi do
                  "#{verdi} #{key}" 
                else
                  "ingen #{key }"
                end
              end
    kvister |> Enum.reduce(&("#{&2} med #{&1}"))
  end

dikt |> Enum.map(&("#{ &1 } ...\n")) |> IO.puts 
