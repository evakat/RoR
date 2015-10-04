class PassendgerCarriages

attr_reader :nofree_seat, :free_seat, :carriages
attr_accessor :number_car, :vagon_list_pass

def initialize (max)
	@max_seat = max
	@number_car = @carriages + 1
	@free_seat = @max_seat
	@nofree_seat = 0
	@number_car = carriages + 1
	@vagon_list_pass << @number_car
end

def zanyat_seat
	@nofree_seat += 1 if @nofree_sed < @max_seat
else 
	puts "Все места заняты"
end 

def osvobodit_seat
	@free_seed += 1 if @free_seed <= @max_seat
else 
	puts "Все места свободны"
end



end 