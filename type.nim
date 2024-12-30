type
  Year = range[2020 .. 2023] # software update required at least for 2024!
  Month = range[1 .. 12]
  Day = 1 .. 31 # same as range[1 .. 31]

var a: int = 0
var d: Day = 1 # OK
d = a # run-time test and error
echo d
