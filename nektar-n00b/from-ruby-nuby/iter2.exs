# Liste (lenket) 
personer = [ "Ola", "Per", "Jan", "Line"]

for person <- personer do
  IO.puts "Er #{person} tilstede?"
end

# Tuple ()
byer = {"Bergen", "Kristiansand", "Stavanger", "Oslo"}

# Nei nei, ikke gjør det slik:
for i <- (0..tuple_size(byer)-1) do
  IO.puts "Noen fra " <> elem(byer, i) <> " her i dag?"
end

# Tupler er egentlig ikke ment for iterasjon, men:
for by <- Tuple.to_list(byer) do
  IO.puts "Hvordan er været i #{ by } i dag?"
end
