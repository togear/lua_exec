function add(...)
    local sum = 0
    for _, v in ipairs{...} do 
        sum = sum + v
    end
    return sum
end

print(pcall(add, 1, 2, 3))
