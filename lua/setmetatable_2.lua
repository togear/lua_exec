Set = {}
mt = {}

function Set.new(l)
    local set = {}
    setmetatable(set,mt)
    for _,v in ipairs(l) do
        set[v] = true
    end
    return set
end


function Set.tostring(set)
    local l = {}
    for e in pairs(set) do
        l[#l+1] = e
    end

    return "{" .. table.concat(l, ",") .. "}"
end

function Set.print(s)
    print(Set.tostring(s))
end

function Set.union(a,b)
    --[[ if getmetatable(a) ~= mt or getmetatable(b) ~= mt then
    --      error("attemp to 'add' a set with a non-set value",2)
    --      end ]]
    local res = Set.new{}
    for k in pairs(a) do res[k] = true end
    for k in pairs(b) do res[k] = true end
    return res
end

s1 = Set.new{10,20,30,50}
s2 = Set.new{30,1}

print(getmetatable(s1))
print(getmetatable(s2))
--
mt.__add = Set.union

s3 = s1 + s2
Set.print(s3)

--[[元素混用
s = Set.new{1,2,3}
s = s + 8 
Set.print(s + 8)
]]



--2 __mul,交集

function Set.intersection(a,b)
    local res = {}
    for k in pairs(a) do
        res[k] = b[k]
    end
    return res
end

mt. __mul = Set.intersection
Set.print(s2 * s1)
Set.print(s1 * s2)


--3 关系类
mt.__le = function(a,b)
    for k in pairs(a) do 
        if not b[k] then return false end
    end
    return true
end

--[[
mt.__lt = function(a,b)
    return a <=b and not(b <= a)
end
]]
mt.__lt = function(a,b)
    return #a < #b
end

mt.__eq = function(a,b)
    return a <= b and b <= a 
end

g1 = Set.new{2,4,3}
g2 = Set.new{4,10,2}
print(g1 <= g2)
print(g1 < g2)
print(g1 >= g2)
print(g1 > g2)
print(g1 == g1 * g2)


