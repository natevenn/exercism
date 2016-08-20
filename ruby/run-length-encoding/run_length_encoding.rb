class RunLengthEncoding
 VERSION = 2

  def self.encode(input)
    input_array = input.chars
    counter = 1
    encoded_string = ''
    input_array.each_with_index do |letter, index|
      next_letter = input_array[index + 1]
      if next_letter == letter
        counter += 1
      else
        if counter > 1
          encoded_string << counter.to_s + letter
        else
          encoded_string << letter
        end
        counter = 1
      end
    end
    encoded_string
  end

  def self.decode(input)
    decoded_string = ""
    number = ''
    index = 0
    while index < input.length
      current_element = input[index]
      if current_element.to_i != 0
        number << current_element
      else
        if number.empty?
          decoded_string << current_element
        else
          decoded_string << current_element * number.to_i
          number = ''
        end
      end
      index += 1
    end
    decoded_string
  end
end
