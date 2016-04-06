A = 360
local foo = require("foo")

local b = foo.add(A,A)
print("b =",b)

foo.update_A()

print("A = ",A)

