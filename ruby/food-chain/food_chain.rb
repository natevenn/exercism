class FoodChain
  VERSION = 2

  def self.song
    animals = ['fly', 'spider', 'bird', 'cat', 'dog', 'goat', 'cow', 'horse']

    lyrics_array = ["She swallowed the spider to catch the fly.", "It wriggled and jiggled and tickled inside her.",
     "She swallowed the bird to catch the spider that wriggled and jiggled and tickled inside her.", "How absurd to swallow a bird!",
     "She swallowed the cat to catch the bird.", "Imagine that, to swallow a cat!",
     "She swallowed the dog to catch the cat.", "What a hog, to swallow a dog!",
     "She swallowed the goat to catch the dog.", "Just opened her throat and swallowed a goat!",
     "She swallowed the cow to catch the goat.", "I don't know how she swallowed a cow!",
     "She's dead, of course!"]

    i = 0

    song = ""

    song_array = [last_line]

    while i < 8

      song_array.unshift(first_line(animals[i]))

      song_array.each do |stansa|
        song << stansa + "\n"
      end

      if i == 6
        song_array.clear
        song_array.unshift(lyrics_array[-1])
      else
        third_line = lyrics_array.shift
        second_line = lyrics_array.shift
        if i == 0
          song_array.shift
        else
          song_array.shift(2)
        end
          song_array.unshift(second_line, third_line)
      end
      i += 1
    end
    song
  end

  def self.first_line(animal)
    "I know an old lady who swallowed a #{animal}."
  end

  def self.last_line
    "I don't know why she swallowed the fly. Perhaps she'll die.\n"
  end
end
