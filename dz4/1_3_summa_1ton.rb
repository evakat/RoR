# задачи 1 - 3 (выбраны разные циклы, номера задач подписаны)
puts "Введи число x, до которого считаем сумму чисел"
x = gets.chomp.to_f
puts "Введи число y"
y = gets.chomp.to_f
arr = (1..x).to_a
k = k.to_f

# задача 2
i = 0
summ = 0
for i in arr
	if i % 2 == 0 
  summ += i
  k += 1
    end
end

sr_arifm = summ / k
puts "сумма (массив for для четных чисел) = #{summ}, среднее арифметическое = #{sr_arifm}"

i = 0
summ = 0
while i < x
  summ += arr[i]
  i += 1
end

sr_arifm = summ / x 
puts "сумма (массив while) = #{summ}, среднее арифметическое = #{sr_arifm}"

i = 0
summ = 0
until i >= x do
  summ += arr[i]
  i += 1
end

sr_arifm = summ / x 
puts "сумма (массив until) = #{summ}, среднее арифметическое = #{sr_arifm}"

# задача 3
summ = 0
 arr.each do |s|
   if s % y == 0
   summ += s
   k += 1
   end
  end

sr_arifm = summ / k 
puts "сумма (each для целочисленного деления на второе число) = #{summ}, среднее арифметическое = #{sr_arifm}"
