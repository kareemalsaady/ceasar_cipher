def ceasar(text, encryption)
  new_text = ""
  text.each_char do |l|
    ascii = l.ord
    if ascii >= 97 && ascii <= 122
      ascii = ascii + encryption
      if ascii > 122
        ascii -= 26
      end
    end
    if ascii >= 65 && ascii <= 90
      ascii = ascii + encryption
      if ascii > 90
        ascii -= 26
      end
    end
    new_text << ascii.chr
  end
  p new_text
end

puts "What text do you want to encrypt?"
phrase = gets.chomp
puts "What encryptor would you like to use? (Please enter a number between 1 and 26)"
encryptor = gets.to_i
  if (encryptor <= 26 && encryptor >=1)
      ceasar(phrase, encryptor)
  else
      p "Invalid Key: Program Terminated"
  end
