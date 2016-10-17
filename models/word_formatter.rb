
class WordFormatter


  attr_accessor(:to_format)

  def initialize(to_format)
    @to_format = to_format
  end

  def upcase()
    return @to_format.upcase
  end

  def camelcase
    return @to_format.split.collect(&:capitalize).join
  end

end
