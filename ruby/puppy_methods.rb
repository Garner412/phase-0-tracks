class Puppy

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