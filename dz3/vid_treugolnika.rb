puts "Введите сторону треугольника а"
a = gets.chomp.to_f
puts "Введите сторону треугольника b"
b = gets.chomp.to_f
puts "Введите сторону треугольника c"
c = gets.chomp.to_f
if (a == b) && (b == c) 
	puts "Треугольник равносторонний"
elsif  (a == b) || (b == c) || (c == a) 
	puts "Треугольник равнобедренный"
else puts "Треугольник нас разочаровал"
end