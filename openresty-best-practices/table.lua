local corp = {
	web = "www.google.com",   --索引为字符串，key = "web",
							  --value = "www.google.com"
		telephone = "12345678",   --索引为字符串
		staff = {"Jack", "Scott", "Gary"}, --索引为字符串，值也是一个表
		100876,              --相当于 [1] = 100876，此时索引为数字
							  --      key = 1, value = 100876
		100191,              --相当于 [2] = 100191，此时索引为数字
		[10] = 360,          --直接把数字索引给出
		["city"] = "Beijing" --索引为字符串
}

print(corp.web)               -->output:www.google.com
print(corp["telephone"])      -->output:12345678
print(corp[2])                -->output:100191
print(corp["city"])           -->output:"Beijing"
print(corp.staff[1])          -->output:Jack
print(corp[10])               -->output:360

local tblTest1 = { 1, a = 2, 3 }
print("Test1 " .. table.getn(tblTest1))

local tblTest2 = { 1, nil }
print("Test2 " .. table.getn(tblTest2))

local tblTest3 = { 1, nil, 2 }
print("Test3 " .. table.getn(tblTest3))

local tblTest4 = { 1, nil, 2, nil }
print("Test4 " .. table.getn(tblTest4))

local tblTest5 = { 1, nil, 2, nil, 3, nil }
print("Test5 " .. table.getn(tblTest5))

local tblTest6 = { 1, nil, 2, nil, 3, nil, 4, nil }
print("Test6 " .. table.getn(tblTest6))

local function compare(x, y) 
   return x > y
end

local a = { 1, 7, 3, 4, 25}
table.sort(a)       
print(a[1], a[2], a[3], a[4], a[5])
table.sort(a, compare) 
print(a[1], a[2], a[3], a[4], a[5])
