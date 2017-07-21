# Finish the implementation of the Car class so it can behave as shown below

class Car

  attr_accessor :make, :model

  @@cars = []

  def initialize(make, model)
    @make = make
    @model = model
    @@cars << self
  end

  def drive
    "VROOOOOOOOOOOOM!"
  end

  def self.all
    @@cars
  end

end

puts car = Car.new("volvo", "lightening")
puts car.make
#=> "volvo"
puts car.model
#=> "ligthening"

puts car.drive
# => "VROOOOOOOOOOOOM!"

puts Car.all
#=> [car1, car2, car3]

# BONUS:

# Car.new(make: "volvo", model: "lightening")

car.make
#=> "volvo"
car.model
#=> "ligthening"
