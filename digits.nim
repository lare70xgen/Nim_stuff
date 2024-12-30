proc digitScanner(s: string) =

  var pos = 0
  proc nextDigit: char =
    while pos < s.len and s[pos] notin {'0' .. '9'}:
      inc(pos)
    if pos == s.len:
      return '\x0'
    result = s[pos]
    inc(pos)

  var c: char
  while true:
    c = nextDigit()
    if c == '\x0':
      break
    stdout.write(c)
  stdout.write('\n')

digitScanner("ad5f2eo73q9st")
