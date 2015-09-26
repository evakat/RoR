bukva = (a..z).to_a
i = 1
 
 while i < 29 do
 	hash[:i] = bukva[i]	
 	i += 1
 end
 
puts "#{hash}"