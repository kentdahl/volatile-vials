# struct2.exs  
defmodule Person do
  defstruct fornavn: "Ola", etternavn: "Nordmann", alder: 18

  def myndig?(person) do
    person.alder >= 18
  end

  def lag_klone(person) do
    %{ person | alder: 0 }     # Kloner er nyfødt
  end

end

# Implementer en protokol for vår Person struct slik at IO.puts fungerer
defimpl String.Chars, for: Person do
  def to_string(person) do
    "#{ person.fornavn } #{ person.etternavn } er #{ person.alder } år."
  end
end

###
# Bare for litt enkel testing...
#
defmodule TestPerson do
  def main(_args) do
    person = %Person{}
    IO.inspect person
    IO.puts    person     #=> "Ola Nordmann er 18 år."

    oline = %{ person | fornavn: 'Oline'}
    IO.puts oline   #=> "Oline Nordmann er 18 år."

    per = %Person{fornavn: "Per", etternavn: "Spelleman", alder: 127}
    IO.puts per
    IO.puts Person.myndig?(per)         #=> true

    nyper = per |> Person.lag_klone
    IO.puts nyper
    IO.puts Person.myndig?(nyper)       #=> false

  end
end
TestPerson.main(nil)
