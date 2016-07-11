class FoodChain
  VERSION = 2

  def self.song
    lyrics = lyrics_array

    i = 0

    song = ""

    song_array = [last_line]

    while i < 8

      add_first_line(song_array, i)

      food_chain_song = add_lyrics_to_song(song_array, song)

      get_next_verse(song_array, lyrics, i)

      i += 1
    end
    food_chain_song
  end

  def self.add_lyrics_to_song(song_array, song)
      song_array.each do |stansa|
        song << stansa + "\n"
      end
    song
  end

  def self.get_next_verse(song_array, lyrics, i)
      if i == 6
        song_array.clear
        song_array.unshift(lyrics[-1])
      else
        third_line = lyrics.shift
        second_line = lyrics.shift
        if i == 0
          song_array.shift
        else
          song_array.shift(2)
        end
          song_array.unshift(second_line, third_line)
      end
      song_array
  end

  def self.add_first_line(song_array, i)
    song_array.unshift(first_line(i))
  end

  def self.first_line(i)
    animals = ['fly', 'spider', 'bird', 'cat', 'dog', 'goat', 'cow', 'horse']
    "I know an old lady who swallowed a #{animals[i]}."
  end

  def self.last_line
    "I don't know why she swallowed the fly. Perhaps she'll die.\n"
  end

  def self.lyrics_array
     ["She swallowed the spider to catch the fly.", "It wriggled and jiggled and tickled inside her.",
     "She swallowed the bird to catch the spider that wriggled and jiggled and tickled inside her.", "How absurd to swallow a bird!",
     "She swallowed the cat to catch the bird.", "Imagine that, to swallow a cat!",
     "She swallowed the dog to catch the cat.", "What a hog, to swallow a dog!",
     "She swallowed the goat to catch the dog.", "Just opened her throat and swallowed a goat!",
     "She swallowed the cow to catch the goat.", "I don't know how she swallowed a cow!",
     "She's dead, of course!"]
  end
end
