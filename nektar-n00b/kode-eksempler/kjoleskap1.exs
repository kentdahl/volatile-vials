defmodule Kjoleskap do
  def start do
    tomt = []
    spawn(Kjoleskap, :kjol, [tomt])
  end

  def kjol(innhold) do
    receive do 
      {:sett_inn, mat} -> innhold = [mat|innhold]
      {:titt,  hvem}   -> send hvem, {:mat, innhold}
      {:ta_ut, hvem}   ->      
        [mat|rester] = innhold
        send hvem, {:spis, mat}
        innhold = rester
    end
    kjol(innhold)    
  end
end

defmodule Handletur do
  
  def test do
    skap = Kjoleskap.start

    send skap, {:sett_inn, "Ost"}
    send skap, {:sett_inn, "Skinke"}
    send skap, {:sett_inn, "Sjokolade"}

    send skap, {:titt, self}
    receive do
      {:mat, all_mat} 
        -> IO.puts "Hva skal vi ha?: #{all_mat |> Enum.join(" eller ")}."
    end

    send skap, {:ta_ut, self}
    receive do
      {:spis, mat} -> IO.puts "Spiser: #{mat}"
    end

    send skap, {:titt, self}
    receive do
      {:mat, rester} -> IO.puts "Hva er igjen? #{rester|>Enum.join(" og ")}."
    end

    send skap, {:kryp_inn, self}
    receive do
      {} -> nil
    after 1_000 -> IO.puts "Kan ikke krype inn! For lite kjøleskap!"
    end

  end
end

Handletur.test
