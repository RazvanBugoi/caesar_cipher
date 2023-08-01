def caesar_cipher(string, shift_factor)
  alphabet_letters_downcase = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z" ]
  alphabet_letters_upcase = alphabet_letters_downcase.map { |char| char.upcase }
  alphabet_length = alphabet_letters_downcase.length
  output = ""

  string.each_char do |char|
    if alphabet_letters_upcase.include?(char)
      index = (alphabet_letters_upcase.index(char) + shift_factor) % alphabet_length
      # Using the modulo operator to wrap around to the beginning
      # of the array when you reach the end
      char = alphabet_letters_upcase[index] 
      output.concat(char.upcase)
    elsif alphabet_letters_downcase.include?(char)
      index = (alphabet_letters_downcase.index(char) + shift_factor) % alphabet_length
      char = alphabet_letters_downcase[index] 
      output.concat(char.downcase)
    else
      output.concat(char)
    end
  end

  output

end

caesar_cipher("What a string!", 5)