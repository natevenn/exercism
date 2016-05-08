class Complement
  Complement::VERSION = 3

  def self.of_dna(protein)
    protein_hash = {"G"=>"C", "C"=>"G", "A"=>"U", "T"=>"A"}
    protein.chars.map do |letter|
      raise ArgumentError, "Invalid sequence" unless protein_hash[letter]
      protein_hash[letter]
    end.join
  end
end
