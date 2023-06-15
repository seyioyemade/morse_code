def decode_char(morse_code)
  morse_code_dict = {
    '.-' => 'A',
    '-...' => 'B',
    '-.-.' => 'C',
    '-..' => 'D',
    '.' => 'E',
    '..-.' => 'F',
    '--.' => 'G',
    '....' => 'H',
    '..' => 'I',
    '.---' => 'J',
    '-.-' => 'K',
    '.-..' => 'L',
    '--' => 'M',
    '-.' => 'N',
    '---' => 'O',
    '.--.' => 'P',
    '--.-' => 'Q',
    '.-.' => 'R',
    '...' => 'S',
    '-' => 'T',
    '..-' => 'U',
    '...-' => 'V',
    '.--' => 'W',
    '-..-' => 'X',
    '-.--' => 'Y',
    '--..' => 'Z'
  }

  morse_code_dict.each { 
    |key,value| 
    if morse_code == key
      return value
    end
  }

end

# puts decode_char '-.-'


def decode_word(morse_code)

  character = ''
  word = ''

  morse_code.each_char do |char|
    if char == ' '
      dec_char = decode_char character
      word += dec_char
      character = ''
    else
      character += char
    end
  end

  dec_char = decode_char character
  word += dec_char

  return word
end

# puts decode_word "-. .- -- ."



