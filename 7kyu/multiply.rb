def mul(a, b)
  return 0 if b == 0
  a + mul(a,b-1)
end