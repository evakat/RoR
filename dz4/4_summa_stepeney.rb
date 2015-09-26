puts "Введи число x, для которого считаем сумму степеней"
x = gets.chomp.to_f
summ_stepeney = 0
arr = (1..x).to_a

arr.each do |s|
	summ_stepeney += s ** s
end

puts "сумма степеней равна #{summ_stepeney}"

