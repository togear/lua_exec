a = {x = 3, y =4}
a.__index = function(table,key) 
    print("__index")
    return a[key]
end

--注:
--冒号 在定义的时候省略掉了self
--点 在定义的时候不省略self 
--
--[[
function a.new(self, o)
    o = o or {}
    print("new")
    setmetatable(o,self)
    return o
end
]]

function a.new(o) 
    o = o or {}
    print("new")
    setmetatable(o,a)
    return o
end

local b = a.new()
--a.new(a,{})
--
print(getmetatable(b))
print(b.x)
