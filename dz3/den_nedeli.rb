puts "Введите номер дня недели"
a = gets.chomp.to_f

case 
    when a == 1
        puts "Понедельник" 
when a == 2
        puts "Вторник"
when a == 3
        puts "Среда"
when a == 4
        puts "Четверг"
when a == 5
        puts "Пятница"
when a == 6
        puts "Суббота"
when a == 7
        puts "Воскресение"
else puts "Такого дня недели нет" 
end