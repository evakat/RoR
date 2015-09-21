puts "Введи размер стороны а"

a = gets.to_f

puts "теперь b"

b = gets.to_f

puts "Считаем площадь или периметр прямоугольника? Введи s или p"
vibor = gets.strip
if vibor == "s" 

s = a * b
puts "Площадь прямоугольника, #{s}"

else p = 2 * a + 2 * b
puts "Периметр прямоугольника , #{p}"
end