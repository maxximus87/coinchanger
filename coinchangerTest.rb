require "minitest/autorun"
require_relative "coinchanger.rb"

class TestCoinChanger < Minitest::Test
	def test_0_cents_return_0
		cents_received = 0
		assert_equal({}, coin_changer(cents_received))
	end
	def test_1_cent_returns_1
		cents_received = 1
		assert_equal({:penny => 1}, coin_changer(cents_received))
	end
	def test_2_cents_return_2_pennies
		cents_received = 2
		assert_equal({:penny => 2}, coin_changer(cents_received))
	end
	def test_5_cents_returns_1_nickel
		cents_received = 5
		assert_equal({:nickel => 5}, coin_changer(cents_received))
	end
	def test_6_cents_returns_1_nickel_and_1_penny
		cents_received = 6
		assert_equal({:nickel => 5, :penny => 1}, coin_changer(cents_received))
	end
end