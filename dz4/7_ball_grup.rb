puts "Введи число студентов"
x = gets.chomp.to_f
arr = []
summ = 0
i = 0

while i < x  do
  puts "Введи оценку для #{i+1} студента"
  arr << gets.chomp.to_f 
  summ += arr[i] 
  i += 1
end

sr_ocenka = summ / x
puts "Средняя оценка студентов #{sr_ocenka}"