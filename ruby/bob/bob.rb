class Bob
  def hey(input)
    if input.gsub(/^\s+|\s+$/, '').length == 0;
      'Fine. Be that way!'
    elsif input == input.upcase && input.match(/^[0-9, ?]*$/).nil?
      'Whoa, chill out!'
    elsif input.slice(-1) == '?'
      'Sure.'
    else
      'Whatever.'
    end
  end
end
