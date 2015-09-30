class Train
	def initialize(number, type, carriages)
		@number = number
		@type = type
		@carriages = carriages
	end

	def speed_more
		@speed += 10 if @speed < 110
	end

	def speed_less
		@speed -= 10 if @speed > 0
	end

	def speed_print
		puts "скорость поезда номер #{number} равна #{@speed}"
	end

	def carriages_more
		@carriages += 1 if @speed == 0
	end

    def carriages_less
		@carriages -= 1 if @speed == 0
	end

    def carriages_print
		puts "количество вагонов поезда номер #{number} равна #{@carriages}"
	end


class Station
	def initialize(name_st)
		@name_st = name_st
		@list_trains = []
	end

	def train_more(number)
		@list_trains << number
	end
    
    def train_less(number)
		@list_trains.delete(number)
	end

	def list_of_trains_print
		puts "список поездов #{@list_trains}"
	end
end