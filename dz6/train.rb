class Train

	attr_accessor :route_trains, :station_stop, :station_next, :station_back, :vagon_list
	attr_reader :number, :type, :carriages
	attr_writer :speed
	


	def initialize(number, type, carriages)
		@number = number
		@type = type
		@carriages = carriages
		@speed = 0
		@vagon_list = (1..carriages).to_a
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

	def carriages_more(vagon)
		if type cargo & @speed == 0
    		@vagon_list_cargo << vagon
    	elsif @speed == 0
    		@vagon_list_pass << vagon

	end

    def carriages_less(vagon)
    	if type cargo & @speed == 0
    		@vagon_list_cargo.delete(vagon)
    	elsif @speed == 0 
    		@vagon_list_pass.delete(vagon)
 
	end

    def carriages_print
		puts "количество вагонов поезда номер #{number} равна #{@carriages}"
	end

	def train_forvard (train, station_stop)
		@station_stop = station_stop
		if station_stop != @st_last 
		@station_stop = @route_trains[route_trains.index(@station_stop) + 1]
	else 
	    puts "Поезд находится на конечной станции маршрута"


	def train_back (train, station_stop)
		@station_stop = station_stop
		if station_stop != @st_first 
		@station_stop = @route_trains[route_trains.index(@station_stop) - 1]
	else 
	    puts "Поезд находится на первой станции маршрута"

    def print station_stop
    	puts "Поезд находится на станции #{@station_stop}"
    end
 
    def print station_next
    puts "Следующая станция #{@route_trains[route_trains.index(@station_stop) + 1]}"
    end

    def print station_back
    puts "Предыдующая станция #{@route_trains[route_trains.index(@station_stop) - 1]}"
    end
