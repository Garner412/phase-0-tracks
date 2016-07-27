class Puppy
  
  def initialize
  #doesn't run if initialize is misspelled
    puts "Initializing new puppy instance..."
  end
  
  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end
  
  def speak(int)
    int.times {puts "Woof!"}
  end
  
  def roll_over
    puts "*rolls over*"
  end
  
  def dog_years(age)
    dog_years = age*7
    puts dog_years
  end
  
  def favorite_trick(str)
    puts "My dog's favorite trick is #{str}."
  end
  
end

puppy = Puppy.new
puppy.fetch("ball")

fido = Puppy.new
fido.fetch("stick")

puppy.speak(3)

puppy.roll_over

puppy.dog_years(4)

puppy.favorite_trick("the 360 no handed catch")


class Olympics
  
  def initialize
    puts "The Olympics are starting soon!"
  end
  
  def basketball(score)
    puts "Team USA scores #{score} points."
  end 
  
  def swimming(medals)
    medals.times {puts "Another gold!"}
  end
  
end

olympics_arr = []
until olympics_arr.length == 50
  olympics_arr << Olympics.new
end

olympics_arr.each do |instance|
  instance.basketball(50)
  instance.swimming(1)
end