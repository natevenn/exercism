class Raindrops
  Raindrops::VERSION = 1

  def self.convert(number)
    raindrop_hash = {3=> 'Pling', 5=>'Plang', 7=>'Plong'}
      if raindrop_hash.any? { |key,value| number % key == 0 }
        raindrop_hash.select do |key|
          number % key == 0
        end.values.join
      else
        number.to_s
    end
  end
end
