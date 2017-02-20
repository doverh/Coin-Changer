def calc_change(num)
#Initiate hash change with quantities
	change = {:quarters=>0, :dime=>0 , :nickel=>0, :penny=> 0} 

	quarters = num / 0.25 
	change [:quarters]= quarters.to_i
	
	dime = num % 0.25 #0.19
	dime = dime / 0.10 # 1.9
	change [:dime]= dime.to_i

	# puts "Dime = #{dime}"
	nickel = (num % 0.1)
	nickel = nickel / 0.05
	# puts "nickel = #{nickel}"
	
	change [:nickel]= nickel.to_i

	penny = (num % 0.05)
	# puts "penny = #{penny}"
	penny = penny / 0.01 
	# puts "penny = #{penny}"
	change [:penny]= penny.round

	return change

end

calc_change(1.29)

