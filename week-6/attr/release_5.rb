class NameData
  attr_accessor :name
  def initialize
    @name = "Eric"
  end
end

class Greetings
  def initialize
    @namedata = NameData.new
  end

  def hello
    puts "Hello #{@namedata.name}! How wonderful to see you today."
  end
end

greet = Greetings.new
greet.hello