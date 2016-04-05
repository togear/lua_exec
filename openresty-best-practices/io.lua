file = io.input("extfiles/text1.txt")
repeat 
	line = io.read()
	if nil == line then
		break
	end
	print(line)
until (false)

io.close(file)

file = io.open("extfiles/text1.txt","a+")
io.output(file)
io.write("\n hello world")
io.close(file)
