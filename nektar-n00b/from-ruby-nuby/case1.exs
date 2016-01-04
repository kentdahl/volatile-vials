svar = IO.gets("Er du gutt eller jente?: ") |> String.strip |> String.downcase

# case er også kjent som switch/case i andre språk
case svar do
  "intetkjønn" ->  IO.puts "Hei!"
  "jente" -> IO.puts "Heisann søta!"     # -- TODO: , "kvinne", "dame"
  "gutt"  -> IO.puts "Heisann kjekken!"  # -- TODO: , "mann", "herre"
  _ -> IO.puts "God dag herr/fru?"
end
