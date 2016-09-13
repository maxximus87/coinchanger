def coin_changer(cents_received)
	coins = {}
	if cents_received >= 2
	coins[:penny] = cents_received
	end
	coins
end