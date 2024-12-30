print "What's your name? "
let name = readLine(stdin)
case name
of "":
  echo "Poor soul, you lost your name?\b"
of "name":
  echo "Very funny, your name is name."
of "Dave", "Frank":
  echo "Cool name!"
else:
  echo "Hi, ", name, "!"
