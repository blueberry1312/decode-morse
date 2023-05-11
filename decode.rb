# Class responsible for decoding Morse code.
class MorseDecoder
  MORSE_CODE = {
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
  }.freeze

  def self.decode_char(code)
    MORSE_CODE[code] || ''
  end

  def self.decode_word(code)
    code.split.map { |char| decode_char(char) }.join
  end

  def self.decode(message)
    words = message.split('   ')
    decoded_words = words.map { |word| decode_word(word) }
    decoded_words.join(' ')
  end
end

message = '.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...'
decoded_message = MorseDecoder.decode(message)
puts decoded_message
