
# Factorial

# I worked on this challenge with Andy Crowley.


# Your Solution Below
def factorial(number)
  if number == 0
    return 1
  else
    number * factorial(number -= 1)
  end

end

factorial(8)