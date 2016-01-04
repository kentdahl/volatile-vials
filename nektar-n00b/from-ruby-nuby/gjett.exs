defmodule Gjett do
  @min 1
  @max 100
  defstruct forsok: 1, fasit: nil

  def new do
    :random.seed(:os.timestamp)   # kaller Erlang funksjoner direkte
    fasit_svar = Enum.random(@min..@max)
    %Gjett{fasit: fasit_svar}
  end

  def spill(gjett) do
    svar = hent_svar
    gjett = sjekk_gjett(gjett, svar)
    spill(gjett)     # uendelig løkke via rekursjon!
  end

  def sjekk_gjett(gjett, svar) do
    diff = abs(svar - gjett.fasit)

    hvor_kald = cond do
      diff > 25 -> "Mye"
      diff > 15 -> "Endel"
      diff > 0 -> "Litt"
      true -> ""
    end

    hvilken_vei = 
      if svar > gjett.fasit do
        "lavere"
      else
        "høyere"
      end

    if diff == 0 do
      IO.puts "Du klarte det på #{ gjett.forsok } forsøk!"
      IO.puts "\nPrøv en gang til. (Skriv 'slutt' for å avslutte)"
      new
    else
      IO.puts hvor_kald <> " " <> hvilken_vei <> ". "
      %{ gjett | forsok: gjett.forsok + 1}
    end
  end

  def hent_svar do
    svar_streng = 
      IO.gets("Gjett ett tall mellom #{ @min } og #{ @max } >: ") |> String.strip

    if svar_streng == "slutt" do
      IO.puts "Ha det bra!"
      exit(:shutdown)
    end
    {svar, _} = svar_streng |> Integer.parse
    IO.puts "Du gjettet #{ svar }"
    svar
  end

  def main(_args) do
    gjett = Gjett.new
    IO.puts "\nGjettekonkurranse!"
    spill(gjett)
  end
end

Gjett.main(nil)
