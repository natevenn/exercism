class Squares
  Squares::VERSION = 1

  attr_reader :number

  def initialize(number)
    @number = number
  end

  def square_of_sums
    number_count = []
    number.times do |x|
      number_count  << x += 1
    end
    number_count.reduce(:+) ** 2
  end

  def sum_of_squares
    number_count = []
    number.times do |x|
      number_count  << (x += 1) ** 2
    end
    number_count.reduce(:+)
  end

  def difference
    square_of_sums - sum_of_squares
  end
end
