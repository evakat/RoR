class CargoCarriages

	attr_reader :nofree_v, :free_v, :carriages
	attr_accessor :number_car, :vagon_list_cargo

def initialize (max)
	@max_ves = max
	@free_ves = @max_ves
	@nofree_ves = 0 
	@number_car = carriages + 1
	@vagon_list_cargo << @number_car
    
end

def zagrusit_ves(ves)
	if  @free_ves >= ves
	@free_ves -= ves  
	@nofree_ves += ves
else puts "Загрузка невозможна - нет свободного места"
    end
end

def vigruzit_ves(ves)
	if  @nofree_ves >= ves
	@free_ves += ves  
	@nofree_ves -= ves
else puts "Выгрузка невозможна - нет груза"
    end
end
end 