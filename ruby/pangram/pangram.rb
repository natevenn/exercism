class Pangram
  Pangram::VERSION = 1

  def self.is_pangram?(str)
    characters = str.downcase.gsub(/\W+/, "").chars.sort.uniq
    return true if characters.count == 26
  end
end
