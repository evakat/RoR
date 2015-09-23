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

m1 = m3 = m5 = m7 = m8 = m10 =31
m4 = m6 = m9 = m11 = 30
v = "Введенная дата была в том году"

if go_to_mars != 0
case 
when month == 1
	puts "#{v}, #{day}"
when month == 2
	puts "#{v} #{m1 + day}"
when month == 3
	puts "#{v} #{m1 + m2 + day}"
when month == 4
	puts "#{v} #{m1 + m2 + m3 + day}"
when month == 5
	puts "#{v} #{m1 + m2 + m3 + m4 + day}"
when month == 6
	puts "#{v} #{m1 + m2 + m3 + m4 + m5 + day}"
when month == 7
	puts "#{v} #{m1 + m2 + m3 + m4 + m5 + m6 + day}"
when month == 8
	puts "#{v} #{m1 + m2 + m3 + m4 + m5 + m6 + m7 + day}"
when month == 9
	puts "#{v} #{m1 + m2 + m3 + m4 + m5 + m6 + m7 + m8 + day}"
when month == 10
	puts "#{v} #{m1 + m2 + m3 + m4 + m5 + m6 + m7 + m8 + m9 + day}"
when month == 11
	puts "#{v} #{m1 + m2 + m3 + m4 + m5 + m6 + m7 + m8 + m9 + m10 + day}"
when month == 12
	puts "#{v} #{m1 + m2 + m3 + m4 + m5 + m6 + m7 + m8 + m9 + m10 + m11 + day}"
end
end