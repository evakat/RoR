puts "Введите сторону треугольника а"
a = gets.chomp.to_f
puts "Введите сторону треугольника b"
b = gets.chomp.to_f
puts "Введите сторону треугольника c"
c = gets.chomp.to_f
 case 
 when a > b && a > c
 	g = a
 when b > a && b > c
 	g = b
 when c > a && c > b
 	g = c
 else g = 0
 end

if a == b && b == c 
	puts "Треугольник равносторонний"
elsif  a == b || b == c || c == a
	puts "Треугольник равнобедренный"
elsif g != 0 && g ** 2 == a ** 2 + b ** 2
	puts "Треугольник прямоугольный, гипотенуза равна #{g}"
else puts "Треугольник нас разочаровал"
end
