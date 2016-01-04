# Ordentlige funksjoner putter man i moduler
defmodule Matte do
  def fib(0) do
    1
  end
  def fib(1) do
    1
  end
  def fib(n) do
    fib(n-1) + fib(n-2)
  end
end

IO.puts Matte.fib(5)   #=> 8

# Referanse til en funksjon:
fob = &Matte.fib/1     # "/1" angir antall argumenter, i.e. "arity"
IO.puts fob.(6)        #=> 13

tallene = (0..10) |> Enum.map(fob)
tallene 
  |> Enum.reduce(&("#{ &2 }, #{ &1 }"))
  |> IO.puts
