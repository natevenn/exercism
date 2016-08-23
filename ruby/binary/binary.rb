class Binary
  attr_reader :num

  def initialize(num)
    @num = num
    if @num.match(/[^0-1]/)
      raise ArgumentError.new("not a valid binary digit")
    end
  end

  def to_decimal
    num = @num.chars
    sum = 0
    num.reverse.each_with_index do |n, i|
      sum += n.to_i * (2**i)
    end
    sum
  end
end

module BookKeeping
  VERSION = 2
end
