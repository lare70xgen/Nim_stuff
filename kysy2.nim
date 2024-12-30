import std/os
 
#---------------------SHOW EVENT TYPES-------------------
proc events() =
  for line in lines "event.txt":
    echo line
#---------------------SHOW PARAMETERS--------------------
proc params() =
  for line in lines "params.txt":
    echo line
#---------------------------------------------------------
write(stdout, "Konfigin nimi: ") 
var nimi = readLine(stdin)
#---------------------SHOW KONFIGGI-----------------------
proc naytaConf() =
  for line in lines nimi&".sh":
    echo line

#---------------------START------------------------------
#write(stdout, "Konfigin nimi: ")
#var nimi = readLine(stdin)
write(stdout, "Haluatko nähdä parametrit? k/e: ")
var p = readLine(stdin)
if p == "k":
  params()

write(stdout, "Anna /polku/tiedosto, tai vaan polku: ")
var polku = readLine(stdin)
events()
write(stdout, "Anna event tyyppi+[optional params]: ")
var eventtype = readLine(stdin)

write(stdout, "Anna komento: ")
var command = readLine(stdin)

let stanza =  "#!/usr/bin/bash"
let loop = "while true; do"
let inot = "  inotifywait --event " & eventtype & " " & polku & " " & "&&" & " " & command
let done = "done"

let lines = [stanza,loop,inot,done]
#---------------------WRITE inot.sh-------------------------
proc writeConf() =
  let f = open(nimi&".sh", fmWrite)
  defer: f.close()
  discard execShellCmd("chmod 755 "&nimi&".sh")

  for line in lines:
    f.writeLine(line)
#-----------------------------------------------------------

writeConf()
naytaConf()
