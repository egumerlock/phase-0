# I worked on this challenge with Sean Norton.


# Your Solution Below

def valid_triangle?(a, b, c)
  # Your code goes here!
  if a == 0 || b == 0 || c == 0
    return false
  elsif a+b >= c && a+c >= b && b+c >= a
    return true
  else false
  end
end

valid_triangle?(3,4,5)
valid_triangle?(1,0,1)