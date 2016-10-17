require('minitest/autorun')
require('minitest/rg')
require_relative('../models/word_formatter')
require( 'pry-byebug')

class WordFormatterTest < Minitest::Test

  def setup
    @postcode = WordFormatter.new('e13 zqf')
  end

  def test_upcase
    assert_equal( 'E13 ZQF',@postcode.upcase)
  end

end