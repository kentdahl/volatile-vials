

# Kom i gang

* Installer Elixir
  * http://elixir-lang.org/

* Installer ved hjelp av Homebrew på Mac:
  * ```
brew install elixir
```

* ... eller manuelt
  * [http://elixir-lang.org/install.html](http://elixir-lang.org/install.html)


---

# Praktisk

* Wifi: 
  * Sixty guest
  * passord: ...
* Kode eksempler: 
  * https://github.com/kentdahl/volatile-vials/tree/master/nektar-n00b/from-ruby-nuby  FIXME
* Presentasjon: 
  * http://kentdahl.github.io/RubyNuby/ FIXME!

---

# Interaktivt...

IEX - Interativ Elixir konsoll

```bash
$ iex
[...]
iex(1)> IO.puts "Hei!"
Hei!
:ok
iex(2)>
```

---

# Kjør som skript

Kjøre en Elixir-fil som ett script:

```bash
$ elixir heiverden1.exs
Hei verden!
```

---

# Hva er Elixir?

* Funksjonelt programmeringsspråk
* Syntaks delvis Ruby inspirert
* Basert på Erlang 


---

# Hei verden

```elixir
defmodule Verden do
  def si_hei do
    IO.puts "Hei verden!"
  end
end
Verden.si_hei
```

---


# Gjenta etter meg:

## Do-bi-do-bi-do!

Du trenger *```do``* flere steder i Elixir enn i Ruby.

## Fun fun fun!

Det er ingen metoder, mkay?


---

# Funksjonell programmering

* Ingen endring av tilstand!
  * Alle endringer returnerer en ny kopi av data.
* Funksjoner gjør det samme hver gang gitt samme input.
  * Ingen _"bivirkninger"_

---

# Vis kode - grunnleggende

* heiverden1.exs
* variabler1.exs
* tekst1.exs
* utput1.exs
* tall1.exs


---

# Tekst i kode

## Typer tekst 

* `:atom` - omtrent som Ruby sitt `Symbol`
* `"Tekst-streng"` - binær-data, UTF-8
* `'Bokstaver'`  -  liste av tegn.

## Bygge tekst

* Interpolation - `"Hei #{ navn }"`
* Sammenføyning - `"Hei" <> navn`

---

# Strøm-operator: `|>`

Disse kodelinjene gjør det samme:

```
"Foo" |> String.upcase |> IO.puts
IO.puts(String.upcase("Foo"))
```


---

# Vis kode - flytkontroll

* hvis1.exs
* hvis2.exs
* case1.exs



---

# Flytkontroll

* `if`-uttrykk returnerer alltid en verdi
* `case`-uttrykk bruker _"mønster-gjenkjenning"_
* `_` - underscore angir data vi ikke bryr oss om

---

# Vis kode - iterasjon og løkker

* gjenta1.exs
* gjenta2.exs
* iter1.exs
* iter2.exs

---

# Iterasjon og løkker

* Ingen `while`, `until` eller `loop` i Elixir
* Bruk rekursjon i stedet
  * Helst hale-rekursjon (_Tail Recursion_)
  * TCO - Tail Call Optimization
* `for` er en _"list comprehension"_ og kun ment for datastrukturer
* Tupler er _ikke_ ment for iterasjon!
* `1..10` er en _Range_ 

---

# Vis kode - data-strukturer

* liste1.exs
* ordbok1.exs
* ordbok2.exs
* tupler1.exs



---

# Data-strukturer

* Tupler  
  * `{:ok, "Ola", 42}`
  * fattigmanns _"Struct"_
  * oppslag på indeks - `elem(tup, 0)`
* Lister
  * `["Per", "Pål", "Espen"]`
  * enveis lenket liste
    * enkelt å dele i `[hode|hale]`
    * kjapt trygt og billig å legge element foran
    * dyrt å legge til element bak
* Maps
  * `%{navn: "Ola", alder: 42}`
  * likner på Ruby sin `Hash`




---

# Mønster-gjenkjenning

* `=` tegnet er ikke vanlig tilordning
  * Elixir gjør _pattern matching_ på datastrukturer
  * ```
{5, 7, 9}  = {a, 7, b}  #=> a==5 og b==9
{1, ^a, c} = {1, 5, 8}  #=> c==8
```

---


TODO:
* Funksjonelt
  * Tilstand...
  * "Oppsamler" - akkumulator-pattern
* Atom (symbol)
* List - head/tail - singly-linked
* Tupler - 
* Pattern matching
* TCO
* Rekursjon
* Erlang funksjoner og biblioteker
  * OTP

MINOR:
* ingen `return` statement.
* 


---




---

# Takk for nå!

