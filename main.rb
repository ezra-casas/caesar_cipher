def caesar_cipher(string, rot=0)
  # convert string into array
  split = string.split("")
  split_length = split.length
  new_string = []

  # Get alphabet
  alphabet = ("a".."z").to_a
  new_alphabet = alphabet.clone

  # Rotate the alphabet
  rot.times do |letter|
    temp = new_alphabet.pop
    new_alphabet.unshift(temp)
  end

  split_length.times do |index|
    if alphabet.index(split[index]) == nil
      new_string.push(" ")
    else
      new_string.push(new_alphabet[alphabet.index(split[index])])
    end

  end

  p new_string.join("")


end
caesar_cipher("Hello pizza how are you", 3)
