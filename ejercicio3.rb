class Vehicle
  def initialize(model, year)
    @model = model
    @year = year
    @start = false
  end

  def engine_start
    @start = true
  end
end

class Car < Vehicle
  @@cars_counter = 0
  attr_accessor :cars_counter
  def initialize(model, year)
    super
    @@cars_counter += 1
  end

  def self.Cars_Amount
    @@cars_counter
  end

  def engine_start
    super
    puts 'El motor se ha encendido'
  end
end

# Car.cars_counter = 0
arr_cars = []
10.times do |i|
  model = "Modelo #{i}"
  year = 2000 + i
  arr_cars << Car.new(model, year)
end

arr_cars[0].engine_start
puts Car.Cars_Amount
print arr_cars
