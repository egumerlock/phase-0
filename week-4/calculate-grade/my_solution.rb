# Calculate a Grade

# I worked on this challenge with: Sean Norton.

# Your Solution Below
def get_grade x
  if x >= 90
    return "A"
  elsif x >= 80
    return "B"
  elsif x >= 70
    return "C"
  elsif x >= 60
    return "D"
  else x >= 0
    return "F"
  end
end

