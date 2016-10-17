require('minitest/autorun')
require('minitest/rg')
require_relative('../models/word_formatter')
require( 'pry-byebug')

class WordFormatterTest < Minitest::Test

  def setup
    @to_format1 = WordFormatter.new('e13 zqf')
    @to_format2 = WordFormatter.new("code clan")
  end

  def test_upcase
    assert_equal( 'E13 ZQF',@to_format1.upcase)
  end

  def test_camelcase
    assert_equal( 'CodeClan', @to_format2.camelcase)
  end

end