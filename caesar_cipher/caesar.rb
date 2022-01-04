def caesar_cipher(string, shift)
  chars = string.bytes
  shifted = []
  chars.each do |char|
    case char
    when 48..57
      shifted << character_shift(char, shift, 57, 10).chr
    when 65..90
      shifted << character_shift(char, shift, 90, 26).chr
    when 97..122
      shifted << character_shift(char, shift, 122, 26).chr
    else
      shifted << char.chr
    end
  end
end

def character_shift(char, shift, max, correction)
  char += shift
  if char > max
    char -= correction
  end
  char
end