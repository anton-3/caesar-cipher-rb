def caesar_cipher(str, input_shift = 0)
  alpha = "abcdefghijklmnopqrstuvwxyz"
  str_arr = str.split("")
  shift = input_shift % 26 # negative shift input is handled here
  encoded = str_arr.map do |char|
    if alpha.include?(char.downcase)
      char_ind = alpha.index(char.downcase)
      char == char.downcase ? alpha[(char_ind + shift) % 26] : alpha[(char_ind + shift) % 26].upcase
    else
      char
    end
  end
  encoded.join
end

p caesar_cipher("Hello World!", 5) # => "Mjqqt Btwqi!"
p caesar_cipher("ABCDE", -2) # => "YZABC"
p caesar_cipher("w x y z", 30) # => "a b c d"