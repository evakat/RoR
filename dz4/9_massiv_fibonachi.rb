arr = [0, 1]
i = 2
n = 100

while i <= n do
	arr[i] = arr[i - 1] + arr[i - 2]
	arr.insert(i)
	i += 1
end

puts "массив чисел Фибоначи #{arr}"
