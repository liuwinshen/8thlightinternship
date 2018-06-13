require 'coin_changer'

RSpec.describe Coinchanger, "dispense" do
	coin_changer = Coinchanger.new

	let(:penny) { 1 }
	let(:nickel){ 5 }
	let(:dime){ 10 }
	let(:quarter){ 25 }

	it "given 1 cent, it returns a penny" do
		expect(coin_changer.dispense(1)).to eq [penny]
	end

	it "given 3 cents, it returns 3 pennies" do
		expect(coin_changer.dispense(3)).to eq [penny, penny, penny]
	end

	it "given 5 cents, it returns 1 nickel" do
		expect(coin_changer.dispense(5)).to eq [nickel]
	end

	it "given 6 cents, it returns 1 nickel and 1 penny" do
		expect(coin_changer.dispense(6)).to eq [nickel, penny]
	end

	it "given 9 cents, it returns 1 nickel and 4 pennies" do
		expect(coin_changer.dispense(9)).to eq [nickel, penny, penny, penny, penny]
	end

	it "given 10 cents, it returns 1 dime" do
		expect(coin_changer.dispense(10)).to eq [dime]
	end

	it "given 12 cents, it returns 1 dime and 1 pennies" do
		expect(coin_changer.dispense(12)).to eq [dime, penny, penny]
	end

	it "given 15 cents, it returns 1 dime and 1 nickel" do
		coin_changer = Coinchanger.new
		expect(coin_changer.dispense(15)).to eq [dime, nickel]
	end

	it "given 16 cents, it returns 1 dime, 1 nickel, and 1 penny" do
		expect(coin_changer.dispense(16)).to eq [dime, nickel, penny]
	end

	it "given 20 cents, it returns 2 dimes" do
		expect(coin_changer.dispense(20)).to eq [dime, dime]
	end

	it "given 23 cents, it returns 2 dimes, 3 pennies" do
		expect(coin_changer.dispense(23)).to eq [dime, dime, penny, penny, penny]
	end

	it "given 25 cents, it returns 1 quarter" do
		expect(coin_changer.dispense(25)).to eq [quarter]
	end

	it "given 30 cents, it returns 1 quarter, 1 nickel" do
		expect(coin_changer.dispense(30)).to eq [quarter, nickel]
	end

	it "given 40 cents, it returns 1 quarter, 1 dime, 1 nickel" do
		expect(coin_changer.dispense(40)).to eq [quarter, dime, nickel]
	end

	it "given 50 cents, it returns 2 quarters" do
		expect(coin_changer.dispense(50)).to eq [quarter, quarter]
	end

	it "given 66 cents, it returns 2 quarters, 1 dime, 1 nickel, 1 penny" do
		expect(coin_changer.dispense(66)).to eq [quarter, quarter, dime, nickel, penny]
	end

	it "given 85 cents, it returns 3 quarters, 1 dime" do
		expect(coin_changer.dispense(85)).to eq [quarter, quarter, quarter, dime]
	end

	it "given 99 cents, it returns 3 quarters, 2 dimes, 4 pennies" do
		expect(coin_changer.dispense(99)).to eq [quarter, quarter, quarter, dime,
																						dime, penny, penny, penny, penny]
	end
end
