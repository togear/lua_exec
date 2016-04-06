--'1
local set1 = {10,20,30}
local set2 = {20,40,50}

local union = function(self, another)
	local set = {}
	local result = {}

	for i,j in pairs(self) do set[j]=true end
	for i,j in pairs(another) do set[j] = true end
	
	for i,j in pairs(set) do table.insert(result,i) end
	return result
end

setmetatable(set1,{__add = union})

local set3 = set1 + set2
for _,j in pairs(set3) do
	io.write(j.." ")
end

--'2
mytable = setmetatable({key1= "value1"},
					{ __index = function(self,key)
					if key == "key2" then
						return "metatablevalue"
					end
					end
					})
print(mytable.key1, mytable.key2)

--'3
t = setmetatable({[1] = "hello"},{ __index = {[2]= "world"}})
print(t[1],t[2])

--'4
arr = {1, 2, 3, 4}
arr = setmetatable(arr, {__tostring = function (self)
    local result = '{'
    local sep = ''
    for _, i in pairs(self) do
        result = result ..sep .. i
        sep = ', '
    end
    result = result .. '}'
    return result
end})
print(arr)  --> {1, 2, 3, 4}

--'5
functor = {}
function func1(self, arg)
  print ("called from", arg)
end

setmetatable(functor, {__call = func1})

functor("functor")  --> called from functor
print(functor)      --> output：0x00076fc8 （后面这串数字可能不一样）
