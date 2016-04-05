local function init()       
    return 1, "lua"
end

local x, y, z = init(), 2   
print(x, y, z)              -->output  1  2  nil

local a, b, c = 2, init()  
print(a, b, c)              -->output  2  1  lua
