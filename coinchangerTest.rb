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
end