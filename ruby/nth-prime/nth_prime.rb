class Prime
  def nth(number_of_prime, primes = [2])
    raise ArgumentError if number_of_prime == 0
    until primes.count == number_of_prime
      number_range = (primes[-1]...primes[-1]**2)
      number_range.detect do |num|
        if !primes.any? do |prime|
            num % prime == 0
          end
          primes << num
        end
      end
    end
    primes.last
  end
end
