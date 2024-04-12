def caesar_cipher(string, rot=0)
  # convert string into array
  split = string.split("")
  split_length = split.length
  new_string = []


  # Get alphabet
  alphabet = ("a".."z").to_a
  upper_alphabet = ("A".."Z").to_a

  new_alphabet = alphabet.rotate(rot)
  new_alphabet_upper = upper_alphabet.rotate(rot)

  split_length.times do |index|

    # First checks if letter is in alphabet
    if alphabet.include?(split[index])     
      new_string.push(new_alphabet[alphabet.index(split[index])])

      # Second: Checks in upper_alphabet
    elsif upper_alphabet.include?(split[index])
      new_string.push(new_alphabet_upper[upper_alphabet.index(split[index])])
    else
     # Third: if not a letter then push add to array
      new_string.push(split[index])
    end
  end


  new_string.join("")
end

5.times do
  rot = rand(0..25)
  p caesar_cipher("My name is Ezra. What is yours", rot)
end
