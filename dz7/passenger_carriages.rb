class PassengerCarriages

attr_reader :nofree_seat, :free_seat, :carriages
attr_accessor :number_car

  def initialize (max)
	@max_seat = max
	@free_seat = @max_seat
	@nofree_seat = 0
  end

  def zanyat_seat
	if @nofree_seat < @max_seat 
		@nofree_seat += 1 
		@free_seat -= 1
    else 
	puts "Все места заняты"
    end
  end 

  def osvobodit_seat
	if @nofree_seat  > 1 
	   @free_seat += 1
	   @nofree_seat -= 1 
    else 
	puts "Все места свободны"
    end
  end
end