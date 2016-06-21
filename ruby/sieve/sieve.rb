class Sieve
  def initialize(num)
    @num = num + 1
    @range = 2..num
  end

  def primes
    primes = []
    range = @range.to_a
    @num.times do |num|
      case !range.nil?
      when num > 1
        primes << range.shift
        delete_non_primes(range, num)
      end
    end
    primes.compact
  end

  def delete_non_primes(range, num)
    range.each do |range_num|
      if range_num % num == 0
        range.delete(range_num)
      end
    end
  end
end
