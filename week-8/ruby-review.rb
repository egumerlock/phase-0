# Cipher Challenge

# I worked on this challenge [by myself, with:]
# I spent [#] hours on this challenge.

# 1. Solution
# Write your comments on what each thing is doing.
# If you have difficulty, go into IRB and play with the methods.

def dr_evils_cipher(coded_message)
  # This is taking the coded message and splitting it into an array of separate elements of characters
  input = coded_message.downcase.split("") # Check out this method in IRB to see how it works! Also refer to the Ruby docs.
  # Creates blank decoded variable
  decoded_sentence = []
  cipher = {"e" => "a",   # This is technically a shift of four letters...Can you think of a way to automate this? Is a hash
            "f" => "b",   # the best data structure for this problem? What are the pros and cons of hashes?
            # Hash is probably not ideal for this situation.  An array and shifting by index value would be more suitable, as you would easily be able to change the shift.
            "g" => "c",
            "h" => "d",
            "i" => "e",
            "j" => "f",
            "k" => "g",
            "l" => "h",
            "m" => "i",
            "n" => "j",
            "o" => "k",
            "p" => "l",
            "q" => "m",
            "r" => "n",
            "s" => "o",
            "t" => "p",
            "u" => "q",
            "v" => "r",
            "w" => "s",
            "x" => "t",
            "y" => "u",
            "z" => "v",
            "a" => "w",
            "b" => "x",
            "c" => "y",
            "d" => "z"}

  input.each do |x| # What is #each doing here?
    # .each is iterating over each input character from the coded message
    found_match = false  # Why would this be assigned to false from the outset? What happens when it's true?
    # If it is true, it will push the character into the decoded sentence array.
    cipher.each_key do |y| # What is #each_key doing here?
      # each_key is taking each key of the hash ciper and iterating over it.
      if x == y  # What is this comparing? Where is it getting x? Where is it getting y? What are those variables really?
        # y is each key in the cipher hash whereas x is the character of the original coded message that it is checking.  It is comparing the character of the coded message to the cipher hash to see if it matches a letter on the cipher hash.  If it does, it pushes the value of the cipher hash to an array.
        decoded_sentence << cipher[y]
        found_match = true
        break  # Why is it breaking here?
        # It breaks here because it has found the corresponding character from the cipher, and now needs to move on to the next letter.
      elsif x == "@" || x == "#" || x == "$" || x == "%"|| x == "^" || x == "&"|| x =="*" #What the heck is this doing?
        # This is checking for special characters, characters that are translated into a space.
        decoded_sentence << " "
        found_match = true
        break
      elsif (0..9).to_a.include?(x) # Try this out in IRB. What does   " (0..9).to_a "    do?
        # Creates an array of integers 0 to 9.  Then it checks to see if x is equal to any of these integers, and if so, push into the new array.
        decoded_sentence << x
        found_match = true
        break
      end
    end
    if not found_match  # What is this looking for?
      # This checks to see if any matches were found, if anything was actually translated.  If not, we still want to keep the original character, and pushes it into the decoded array.
      decoded_sentence << x
    end
  end
  decoded_sentence = decoded_sentence.join("")
  #What is this method returning?
  # This method returns the decoded_sentence array joined together into a string (sentence).
end

# Your Refactored Solution
def dr_evils_cipher(coded_message)
  input = coded_message.downcase.split("")
  decoded_sentence = []
  cipher = {}
  alphabet = ('a'..'z').to_a
  alphabet.each_with_index {|k, v| cipher[k] = alphabet[v - 4]}
  input.each do |char_input|
    found_match = false
    cipher.each_key do |char_cipher|
      if char_input == char_cipher
        decoded_sentence << cipher[char_cipher]
        found_match = true
        break
      elsif char_input == "@" || char_input == "#" || char_input == "$" || char_input == "%"|| char_input == "^" || char_input == "&"|| char_input =="*"
        decoded_sentence << " "
        found_match = true
        break
      elsif (0..9).to_a.include?(char_input)
        decoded_sentence << char_input
        found_match = true
        break
      end
    end
    if not found_match
      decoded_sentence << char_input
    end
  end
  decoded_sentence = decoded_sentence.join("")
end


# Make more Object-Oriented (Optional)


# Driver Test Code:
p dr_evils_cipher("m^aerx%e&gsoi!") == "i want a coke!" #This is driver test code and should print true
# Find out what Dr. Evil is saying below and turn it into driver test code as well. Driver test code statements should always return "true."
p dr_evils_cipher("syv%ievpc#exxiqtxw&ex^e$xvegxsv#fieq#airx%xlvsykl$wizivep#tvitevexmsrw.#tvitevexmsrw#e*xlvsykl#k&aivi%e@gsqtpixi&jempyvi.
&fyx%rsa,$pehmiw@erh#kirxpiqir,%ai%jmreppc@lezi&e&asvomrk%xvegxsv#fieq,^almgl^ai^wlepp%gepp@tvitevexmsr^l")
p dr_evils_cipher("csy&wii,@m'zi@xyvrih$xli*qssr$mrxs&alex@m#pmoi%xs#gepp%e^hiexl#wxev.")
p dr_evils_cipher("qmrm#qi,*mj^m#iziv^pswx#csy#m^hsr'x%orsa^alex@m%asyph^hs.
@m'h%tvsfefpc%qszi$sr%erh*kix#ersxliv$gpsri@fyx*xlivi@asyph^fi@e^15&qmryxi@tivmsh%xlivi$alivi*m*asyph&nywx^fi$mrgsrwspefpi.")
p dr_evils_cipher("alc@qeoi*e$xvmppmsr^alir#ai*gsyph%qeoi...#fmppmsrw?")

# Reflection
# Keep your reflection limited to 10-15 minutes!
=begin
What concepts did you review or learn in this challenge?
I reviewed how to iterate and create a hash.  I used .each_with_index to iterate over an array, creating a value for each key in the hash.
What is still confusing to you about Ruby?
Ruby syntax is still confusing, as in the iteration .each_with_index, it takes two variables, yet k refers to the value of the element in the array.  I would have thought that k would refer to the index value.
What are you going to study to get more prepared for Phase 1?
I need to refresh iterations over arrays, and creating hashes for Phase 1.
=end