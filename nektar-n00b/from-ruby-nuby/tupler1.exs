# Helt på tuppa...
{"Dette", :er, 1, "tuple"}

# Funksjoner som returnerer mer enn en verdi
{tall, resten} = Integer.parse("123.45")   #=>{123, ".45"}
{status, sti} = File.cwd  #=> {:ok, "/Users/kent"}

# Med mønster-gjenkjenning kan man hente ut data:
{a, 7, b}  = {5, 7, 9}  #=> a==5 og b==9
{1, ^a, c} = {1, 5, 8}  #=> c==8
