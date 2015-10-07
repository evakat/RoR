class Route
	def initialize(st_first, st_last)
		@st_first = st_first
		@st_last = st_last
		@route_trains = [@st_first, @st_last]
	end

	def route_add(st_between)
		@route_trains.insert(-2, st_between)
	end
    def route_delete(st_between)
		@route_trains.delete(st_between)
	end
	def route_print
		@route_trains
	end
end