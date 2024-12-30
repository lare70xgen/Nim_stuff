runnableExamples:
  let encoded = encode("Hello World")
  assert encoded == "SGVsbG8gV29ybGQ="

runnableExamples:
  let encodedInts = encode([1'u8,2,3])
  assert encodedInts == "AQID"
  let encodedChars = encode(['h','e','y'])
  assert encodedChars == "aGV5"

runnableExamples:
  let decoded = decode("SGVsbG8gV29ybGQ=")
  assert decoded == "Hello World"

##[
## URL Safe Base64
]##

runnableExamples:
  assert encode("c\xf7>", safe = true) == "Y_c-"
  assert encode("c\xf7>", safe = false) == "Y/c+"

