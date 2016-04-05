file = io.open("extfiles/text2.txt","r")

for line in file:lines() do
	print(line)
end
file:close()

file_write = io.open("extfiles/text2.txt","a")
file_write:write("\nhello wordl")
file_write.close()
