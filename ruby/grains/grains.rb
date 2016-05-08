class Grains

  def self.square(number_of_squares)
    grain_count = 0
    number_of_squares.times do |i|
      case
      when i < 2
        grain_count += 1
      when i > 1
        grain_count *= 2
      end
    end
    grain_count
  end

  def self.total
    sum = 0
    65.times do |i|
     sum += square(i)
    end
    sum
  end
end
