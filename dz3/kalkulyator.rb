puts "Введи число а"

a = gets.to_f

puts "теперь b"

b = gets.to_f

puts "Что с ними делать? Введи знак"
vibor = gets.chomp

#   if 	vibor == "*"     
# s = a * b 
#  elsif 	vibor == "+"
# s = a + b
#  elsif 	vibor == "/"
# 	s = a / b
#  elsif 	vibor == "-"
# 	s = a - b 
# else 
#  	puts "Неверная операция"

#  	end	

case vibor
	when "+"
		s = a + b
	when "-"
		s = a - b
	when "/"
	s = a / b
	when "*"
	s = a * b
	else "Неверная операция"
end
	puts "#{a} #{vibor} #{b} = #{s}" if s
	
 
 