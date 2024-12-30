template print(s: varargs[string, `$`]) =
  for x in s:
    stdout.write x
