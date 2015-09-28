bukva = ("a".."z").to_a
i = 1
hash = {}
 
 while i <= 26 do
 	hash[bukva[i-1]] = i	
 	i += 1
 end
 
puts "#{hash}"