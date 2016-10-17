
class WordFormatter


  attr_accessor(:postcode)

  def initialize(postcode)
    @postcode = postcode
  end

  def upcase()
    return @postcode.upcase
  end

end
