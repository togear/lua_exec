function f(x)
    print("function run once")
    return x*2
end

for i = 1, f(5) do print(i) end

--[[f(x)只执行一次
第三个参数默认为步长,默认为1
--]]
