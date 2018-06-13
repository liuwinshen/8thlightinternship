class Coinchanger

	def dispense(change)
		penny = 1
		nickel = 5
		dime = 10
		quarter = 25
		coin_array = []

		while change >= 25
			change -= 25
			coin_array << quarter
		end

		while change >= 10
			change -= 10
			coin_array << dime
		end

		while change >= 5
			change -= 5
			coin_array << nickel
		end

		change.times do |i|
				coin_array << penny
		end

		coin_array
	end
end
