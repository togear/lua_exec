Window = {}
Window.prototype = { x =0, y = 0, width = 100 , height}
Window.mt = {}

function Window.new(o)
    setmetatable(o,Window.mt)
    return o
end

Window.mt.__index = function(table,key)
    return Window.prototype[key]
end

w = Window.new{x=10,y = 20}
print(w.width)

--__index修改table默认值
function setDefault(t,d)
    local mt = {__index = function() return d end}
    setmetatable(t,mt)
end

tab = {x = 10 ,y = 20}
print(tab.x,tab.z)
setDefault(tab,0)
print(tab.x,tab.z)
