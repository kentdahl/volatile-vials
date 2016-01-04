# En enkel Struct. 
defmodule Person do
  defstruct fornavn: "Ola", etternavn: "Nordmann", alder: 18
end

###
# Bare for litt enkel testing
#
defmodule TestPerson do
  def main(_args) do
    ola = %Person{}
    per = %Person{fornavn: "Per", etternavn: "Spelleman", alder: 127}
    IO.inspect ola
    IO.inspect per
  end
end
TestPerson.main(nil)
