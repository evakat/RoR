require_relative "station"
require_relative "route"
require_relative "train"
require_relative "cargo_train"
require_relative "passenger_train"
require_relative "cargo_carriages"
require_relative "passenger_carriages"

class Miracle
	def inicialize
		@station = []
	end

	def menu

loop do 
puts "Нажмите нужную цифру: 1 - Создавать станции, 2 - Создавать маршруты, 3 - Создавать поезда, 4 - Добавлять вагоны к поезду, 5 - Отцеплять вагоны от поезда, 6 - Помещать поезда на станцию, 7 - Загружать/разгружать грузовые вагоны, 8 - Занимать/освобождать места в пассажирских вагонах, 9 - Просматривать список станций и список поездов на станции, 0 - Выход"

i = gets.chomp.to_i

  case i
  when 1
	create_station
  when 2
	create_route
  when 3
	create_train
  when 4
	add_carriages
  when 5
	less_carriages
  when 6
	go_to_station
  when 7
	add_ves
  when 8
	add_passengers
  when 9
	print_stations
  when 0
	break
  else 
	puts "Такого пункта нет"
  end
end
end

def create_station
  loop do 
	puts "Введите название станции или 0 для выхода"
    name_st = gets.chomp
    break if name == "0"
    @station << Station.new(name_st)
  end
end

def create_route
  puts "Создание маршрута. Введите или выберите номер первой станции"
  @station.each {|i| puts "#{i} - #{@station.index(i)}"}
  st_first = gets.chomps
  self.st_first = @station[st_first] if @station.include?(st_first) == false
  @station = @station.delete(st_first)
  puts "Конечная станция"
  @station.each {|i| puts "#{i} - #{@station.index(i)}"}
  st_last = gets.chomps
  self.st_last = @station[st_last] if @station.include?(st_last) == false	
  @station = @station.delete(st_last)

  route = Route.new(st_first, st_last)

  if @station.any?
    puts "Введите промежуточные станции маршрута, выберите их из списка или введите нет, чтобы не добавлять"
    loop do
       @station.each {|i| puts "#{i} - #{@station.index(i)}"}
       st_between = gets.comps
       self.st_between = @station[st_between] if @station.include?(st_between) == false
     break if input == "нет"
     route.route_add(st_between)
     end
   else
   	 puts "Вы создали всего 2 станции, придется вводить вручную"
     loop do
   	 st_between = gets.comps.to_s
     break if input == "нет"
     route.route_add(st_between)
     end
   end
end
end