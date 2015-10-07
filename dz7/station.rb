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