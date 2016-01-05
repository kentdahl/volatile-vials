# Løkker implementeres ved rekursjon!
defmodule Gjenta do
  def loop do
    IO.write "En gutt og ei jente satt i ett tre. \n"
    IO.write "Så falt gutten ned. \n"
    svar = IO.gets("Hvem satt igjen? :> ") |> String.strip |> String.downcase
    if svar == "jenten" do
      IO.puts "Er du en luring? Eller Bergenser?"
    else
      loop  # Hale-rekursjon!
    end
  end
end

Gjenta.loop
