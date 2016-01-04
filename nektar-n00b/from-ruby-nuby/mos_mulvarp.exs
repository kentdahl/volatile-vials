defmodule MosMulvarp do
  defstruct plen: [], mulvarp: nil

  import IO.ANSI

  def new do
    mulvarp = (0..9) |> Enum.random
    plen = (0..9)    |> Enum.map( &({:green, &1}) )
    %MosMulvarp{plen: plen, mulvarp: mulvarp}
  end

  def mosing(mos) do
    vis_plen(mos)
    mos = mos_til(mos)
    mosing(mos)
  end

  def mos_til(mos) do
    IO.write "\nMos hvor? (0-9): "
    input_str = IO.getn(nil, 1)
    IO.write clear_line
    input_data = input_str |> Integer.parse
    if input_data == :error do
     mos = mos_til(mos)
    else
     { mos_pos, _ } = input_data
     traff_mulvarpen = mos_pos == mos.mulvarp
     ny_flekk = 
       if traff_mulvarpen do
         {:dead, mos_pos}
       else
         {:red, mos_pos}
       end
     plen = mos.plen |> List.delete_at(mos_pos) |>List.insert_at(mos_pos, ny_flekk)
     mos = %{ mos | plen: plen}
     if traff_mulvarpen do
       vis_plen(mos)
       IO.puts format([:yellow, "\nDu moste den!!!"])
       IO.gets("Trykk Enter for å starte på nytt...")
       IO.gets(nil)
       mos = new
     else
       hvilken_vei = if mos_pos < mos.mulvarp do "høyre" else "venstre" end
       IO.puts hvilken_vei
     end
    end
    mos
  end

  def vis_plen(mos) do
    IO.write home <> clear_line
    mos.plen 
      |> Enum.map(&farget_plen_flekk/1)
      |> IO.puts
  end

  def farget_plen_flekk({farge, indeks}) do
    str = case farge do
      :green -> [:green_background,  :blue, "  #{ indeks } " ]
      :red   -> [:red_background,    :black, " __ "]
      :dead  -> [:yellow_background, :red, " XP "]
      _ -> "___"
    end
    format(str ++ [:default_background])
  end

  def start do
    IO.write clear
    mos = new
    mosing(mos)
  end

end

MosMulvarp.start
