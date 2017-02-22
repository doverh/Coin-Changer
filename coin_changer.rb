def calc_change(num)
#Initiate hash change with quantities
	change = {:quarters=>0, :dime=>0 , :nickel=>0, :penny=> 0} 

	quarters = num / 0.25
	change [:quarters]= quarters.to_i
	remaining_money = num % 0.25 #0.04
	puts remaining_money
	dime = remaining_money / 0.10 #0.15
	change [:dime]= dime.to_i
	remaining_money = remaining_money % 0.10 #0.05
	puts remaining_money
	nickel = remaining_money / 0.05 # 1
	change [:nickel]= nickel.to_i
	remaining_money = remaining_money % 0.05
	puts remaining_money
	
	penny = remaining_money / 0.01
	if penny.round < 5
		change [:penny]= penny.round
	else
		change [:penny]= 0
	end	
	puts change
	return change

end

calc_change(2.39)

