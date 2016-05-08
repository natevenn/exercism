class Phrase
  Phrase::VERSION = 1
  attr_reader :words

  def initialize(words)
    @words = format_phrase(words)
  end

  def word_count
    words.map.with_object({}) do |word_in_phrase, counts|
      counts["#{word_in_phrase}"] = count_occurences(word_in_phrase)
    end
  end

  def count_occurences(word_in_phrase)
    occurences = words.count { |word| word == word_in_phrase }
  end

  def format_phrase(words)
    words = words.split(/[^a-zA-Z0-9']/).delete_if { |element| element == "" }
    format_words(words)
  end

  def format_words(words)
    words.map do |word|
      word.downcase.gsub(/\A'|'\Z/, '')
    end
  end
end
