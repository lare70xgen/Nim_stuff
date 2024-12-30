let names = ["Nim", "Julia", "?", "Rust"]
block check:
  for n in names:
    for c in n:
      if c notin {'a' .. 'z', 'A' .. 'Z' }:
        echo "invalid character in name"
        break check
echo "we continue"
