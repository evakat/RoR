puts "Привет, как тебя зовут?"

name = gets

puts "Привет, #{name} Напиши свой рост в сантиметрах"

rost = gets.chomp.to_f

if rost == 0 
	puts "Сначала подрасти"  
else
optimalniyves = rost - 110

puts "Твой идеальный вес, #{optimalniyves}кг А какой твой реальный вес?"

realves = gets.chomp.to_i

if realves > optimalniyves 
	puts "Тебе пора начать меньше есть и больше двигаться. У тебя получится!"
else 
 puts " Ты молодец, держишь себя в форме. Продолжай!"
end
end