

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
  * https://github.com/kentdahl/nektar-nuby
* Presentasjon: 
  * http://kentdahl.github.io/nektar-nuby/

---


# Hva er Elixir?

* Funksjonelt programmeringsspråk
  * Syntaks delvis Ruby inspirert
  * Laget av José Valim (utvikler fra Rails core)
* Basert på Erlang 
  * Kjører på _BEAM_ (Erlang sin VM)
  * Concurrent (samtidighet)
  * Fault-tolerant

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

# Se kode
## grunnleggende

* [heiverden1.exs](https://github.com/kentdahl/nektar-nuby/blob/master/elixir-intro/kode/eksempler/heiverden1.exs)
* variabler1.exs
* tekst1.exs
* utput1.exs
* tall1.exs


---

# Tekst i kode

## Typer tekst 

* `:atom`             &rArr; omtrent som Ruby sitt `Symbol`
* `"Tekst-streng"`    &rArr; binær-data, UTF-8
* `'Bokstaver'`       &rArr; liste av tegn.

---

# Tekst i kode

## Bygge tekst

* Interpolation:
  * `"Hei #{ navn }"`
* Sammenføyning:
  * `"Hei" <> navn`

---

# Strøm-operator: `|>`

Disse kodelinjene gjør det samme:

```
"Foo" |> String.upcase |> IO.puts
IO.puts(String.upcase("Foo"))
```


---

# Funksjoner
## Se kode

* fun1.exs
* fun2.exs

---

# Flytkontroll
## Se kode

* hvis1.exs
* hvis2.exs
* case1.exs



---

# Flytkontroll

* `if`-uttrykk returnerer alltid en verdi
* `case`-uttrykk bruker _"mønster-gjenkjenning"_
* `_` - underscore angir data vi ikke bryr oss om

---

# Iterasjon og løkker
## Se kode 

* gjenta1.exs
* gjenta2.exs
* iter1.exs
* iter2.exs

---

# Iterasjon og løkker

* `for` er en _"list comprehension"_ og kun ment for datastrukturer
* Ingen `while`, `until` eller `loop` i Elixir
* Bruk rekursjon i stedet
  * Helst hale-rekursjon (_Tail Recursion_)
  * TCO - Tail Call Optimization
* Tupler er _ikke_ ment for iterasjon!
* `1..10` er en _Range_ 

---

# Data-strukturer
## Se kode 

* liste1.exs
* ordbok1.exs
* ordbok2.exs
* tupler1.exs



---

# Data-strukturer
## Tupler

* `tup = {:ok, "Ola", 42}`
* fattigmanns _"Struct"_
* oppslag på indeks - `elem(tup, 0)`

---

# Data-strukturer
## Lister
* `["Per", "Pål", "Espen"]`
* enveis lenket liste
  * enkelt å dele i `[hode|hale]`
  * kjapt trygt og billig å legge element foran
  * dyrt å legge til element bak

---

# Data-strukturer
## Maps
* `map = %{navn: "Ola", alder: 42}`
  * `map.navn #=> "Ola"`
* likner på Ruby sin `Hash`


---

# Mønster-gjenkjenning

* `=` tegnet er ikke vanlig tilordning
  * Elixir gjør _pattern matching_ på datastrukturer
* Kan brukes i funksjonsdefinisjoner, `cond`, `case` osv.


---

# Moduler
* Kan nøstes
* Grupperer funksjoner
* Kan inkluderes i andre moduler:
  * `import` - hent inn funksjonene
  * `use` - for meta-programmeringsmagi

---


# Egne data-strukturer
## Se kode

* struct1.exs
* struct2.exs




---

# Større eksempler
## Se kode
* gjett.exs
* mos_mulvarp.exs

---

# Prosesser

* Erlang prosesser
  * Egen stack, GC, etc.
  * Scheduling
* Kommuniserer med meldinger
  * _"Postkasse"_
  * send / receive

---

# Prosesser
## Se kode
* kjoleskap1.exs



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
* Macro



MINOR:
* ingen `return` statement.
* 


# ... smaker som ...

* iex - irb
* mix - bundler + rake
* hex - gem
* Phoenix - Rails
* 

---




---

# Takk for nå!

