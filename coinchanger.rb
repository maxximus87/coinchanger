def coin_changer(cents_received)
	coins = {}
	if cents_received.between?(0, 4)
	coins[:penny] = cents_received
elsif cents_received == 5
	coins[:nickel] = cents_received
elsif cents_received.between?(6, 9)
	coins[:nickel] = 5
	coins[:penny] = cents_received - 5
	end
	coins
end