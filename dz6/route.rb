class Route
	def initialize(st_first, st_last)
		@st_first = st_first
		@st_last = st_last
		@route_trains = []
		@route_trains.first = @st_first
		@route_trains.last = @st_last
	end

	def route_trains_add(st_between)
		@route_trains.insert(-2) = st_between
	end

    def route_trains_delete(st_between)
		@route_trains.delete(st_between)
	end

	def route_trains_print
		puts "Список станций маршрута #{@route_trains}"
	end