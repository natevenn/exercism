class RunLengthEncoding
  def self.encode(input)
    input_array = input.chars
    counter = 0
    next_element = counter + 1
    data_string = ""
    while input_array[counter]
      if input_array[next_element] != input_array[counter]
        if counter == 0
          data_string << input_array[counter]
        else
          data_string << input_array[counter] + counter
      else
      counter += 1
    require "pry"
    binding.pry
    end

  end
end
