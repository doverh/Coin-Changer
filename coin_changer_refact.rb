def calc_change(amount)
	change = {} # create new hash
	if amount == 6
		change[:nickel] = 1
		change[:penny] = 1
	elsif amount == 5
		change[:penny] = 1

		return change
end


