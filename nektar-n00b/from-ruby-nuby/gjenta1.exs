# while - gjenta så lenge noe er sant
defmodule Gjenta do
  def loop do
    IO.write "En gutt og ei jente satt i ett tre. \n"
    IO.write "Så falt gutten ned. \n"
    IO.write "  Hvem satt igjen? :> "
    svar = IO.gets(nil) |> String.strip |> String.downcase
    if svar == "jenten" do
      IO.puts "Er du en luring? Eller Bergenser?"
    else
      loop  # Tail-recursion!
    end
  end
end

Gjenta.loop
