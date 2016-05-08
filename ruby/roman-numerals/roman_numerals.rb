class Fixnum
  Fixnum::VERSION = 1

  ROMAN_NUMERALS = { 1000=>"M", 900=>"CM", 500=>"D", 400=>"LD", 100=>"C", 90=>"XC", 50=>"L", 40=>"XL", 10=>"X", 9=>"IX", 5=>"V", 4=>"IV", 1="I"}

  def to_roman
    
  # def to_roman
  #   roman_numeral = []
  #   numbers = self.to_s.chars
  #   until numbers.count == 0
  #     if numbers.count == 4 && numbers[0] != '0'
  #       roman_numeral << ROMAN_NUMERALS_1000S.fetch(numbers[0].to_i)
  #     elsif numbers.count == 3 && numbers[0] != '0'
  #       roman_numeral << ROMAN_NUMERALS_100S.fetch(numbers[0].to_i)
  #     elsif numbers.count == 2 && numbers[0] != '0'
  #       roman_numeral << ROMAN_NUMERALS_10S.fetch(numbers[0].to_i)
  #     elsif numbers.count == 1 && numbers[0] != '0'
  #       roman_numeral << ROMAN_NUMERALS_0S.fetch(numbers[0].to_i)
  #     end
  #     numbers.shift
  #   end
  #   roman_numeral.join
  # end
end
