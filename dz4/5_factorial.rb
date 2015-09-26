puts "Введи число x, для которого считаем факториал"
x = gets.chomp.to_f
factorial = 1
arr = (1..x).to_a

arr.each do |s|
	factorial = factorial * s
end

puts "факториал  равен #{factorial}"

