require_relative "rental_charge"
require_relative "vehicle"
require_relative "car"
require_relative "bike"

car1 = Car.new(123, "bmw", 100)
car2 = Car.new(456, "maruti", 100)
bike1 = Bike.new(789, "honda", 50)
bike2 = Bike.new(345, "royal enfield", 50)

# vehicles = [car1, bike1, car2, bike2]
car1.add_vehicle
car2.add_vehicle
bike1.add_vehicle
bike2.add_vehicle

car1.rent_vehicle
car1.return_vehicle(2)

Vehicle.dispaly_vehicle