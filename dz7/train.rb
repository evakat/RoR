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
		puts "скорость поезда номер #{@number} равна #{@speed}"
	end

	def carriages_more
		if @speed == 0
			if self.type == "cargo" 
    		@vagon_list_cargo =  @vagon_list << (@vagon_list.size + 1)  
    	    elsif self.type == "pass"
    		@vagon_list_pass = @vagon_list << (@vagon_list.size + 1) 
            else puts "Нет такого типа вагона"
            end
        @carriages += 1
        else
        puts "Сначала остановите поезд"
        end 
	end

    def carriages_less(vagon)
    	if @speed == 0 && @vagon_list.include?(vagon)
			if self.type == "cargo" 
    		@vagon_list_cargo = @vagon_list.delete(vagon) 
    	    elsif self.type == "pass"
    		@vagon_list_pass = @vagon_list.delete(vagon)
            else puts "Нет такого типа вагона"
            end
            @carriages -= 1
        else
        puts "Вагон отцепить нельзя"
        end 
	end

    def carriages_print
		puts "количество вагонов поезда N #{number} = #{@carriages}"
		@vagon_list
	end

	def train_forvard (train, station_stop)
		@station_stop = station_stop
		if station_stop != @st_last 
		@station_stop = @route_trains[@route_trains.index(@station_stop) + 1]
	    else 
	    puts "Поезд находится на конечной станции маршрута"
	    end
    end 

	def train_back (train, station_stop)
		@station_stop = station_stop
		if station_stop != @st_first 
		@station_stop = @route_trains[@route_trains.index(@station_stop) - 1]
	    else 
	    puts "Поезд находится на первой станции маршрута"
        end
    end

    def print station_stop
    	puts "Поезд находится на станции #{@station_stop}"
    end
 
    def print station_next
    puts "Следующая станция #{@route_trains[@route_trains.index(@station_stop) + 1]}"
    end

    def print station_back
    puts "Предыдующая станция #{@route_trains[@route_trains.index(@station_stop) - 1]}"
    end
end