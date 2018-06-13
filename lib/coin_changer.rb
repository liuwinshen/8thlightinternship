class Coinchanger

	def dispense(change)
		coins = [25, 10, 5, 1]
		change_given = []

		coins.each do |coin|
			while change >= coin
				change -= coin
				change_given << coin
			end
		end
		change_given
	end
end
