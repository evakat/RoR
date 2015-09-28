puts "Собираем корзину товаров. В конце набора введи cтоп"
hash = {}
arr = []
summ = 0

loop do
	vihod = gets.chomp
	puts "Введи название товара"
    tovar = gets.chomp.to_sym
    puts "Введи цену товара"
    cena = gets.chomp.to_f
    puts "Введи количество товара"
    kolvo = gets.chomp.to_f
    arr = [cena, kolvo]
    hash [:tovar] = arr
    summ += cena * kolvo
break if vihod == "стоп" 
end

puts "Вот список товаров в корзине, #{hash}"
puts "Их стоимость = #{summ}"