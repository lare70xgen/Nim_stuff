import std/terminal
stdout.styledWriteLine({styleBright, styleBlink, styleUnderscore}, "styled text ")
stdout.styledWriteLine(fgRed, "red text ")
stdout.styledWriteLine(fgWhite, bgRed, "white text in red background")
stdout.styledWriteLine(" ordinary text without style ")

stdout.setBackGroundColor(bgCyan, true)
stdout.setForeGroundColor(fgBlue)
stdout.write("blue text in cyan background")
stdout.resetAttributes()

# You can specify multiple text parameters. Style parameters
# only affect the text parameter right after them.
styledEcho styleBright, fgGreen, "[PASS]", resetStyle, fgGreen, " Yay!"

stdout.styledWriteLine(fgRed, "red text ", styleBright, "bold red", fgDefault, " bold text")
