puts "Введи дату, начни с дня"
 	day = gets.chomp.to_i
 	puts "Введи номер месяца"
 	month = gets.chomp.to_i
 	puts "Введи год"
 	year = gets.chomp.to_i
 	if day > 31 || day < 1 || month > 12 || month < 1
 	puts "Добро пожаловать на землю, марсианин. Таких дат тут нет"
 	go_to_mars = 0
 	end
 	if year % 4 == 0 && year % 100 != 0 || year % 4 == 0 && year % 100 == 0 && year % 400 == 0
 	m2 = 29
 	puts "Кстати, это был високосный год"
 	else
 	m2 = 28
 	puts "Кстати, это был не високосный год"
 	end
m = [0, 31, m2, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
 	if go_to_mars != 0
i = 0
result = 0
while i < month 
  result += m[i]
  i += 1
end
v = "Введенная дата была в том году"
 	puts "#{v} #{result + day}"
 	
 	end