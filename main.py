def incrementor(stride:int):
  def inner(x:int):
    return x + stride
  return inner
  
foo=incrementor(-2)
print(foo(20))

