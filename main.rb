require_relative "rental_charge"
require_relative "vehicle"
require_relative "car"
require_relative "bike"

car1 = Car.new(123, "bmw", 1000)
car2 = Car.new(456, "maruti", 800)
bike1 = Bike.new(789, "honda", 500)
bike2 = Bike.new(345, "royal enfield", 700)

vehicles = [car1, bike1, car2, bike2]

loop do 
  puts "------Vechicle Rental System------"
  
  puts "Display All Vehicle"
  puts "Rent Vehicle"
  puts "Return Vehicle"
  puts "Display Available Vehicle"
  puts "Exit"

  print "Enter a choice: "
  choice = gets.chomp.to_i

  case choice
    
  when 1
    vehicles.each do |vehicle|
      vehicle.dispaly_vehicle
    end
  
  when 2
    puts "Enter Vehicle Number"
    number = gets.chomp.to_i

    vehicle = vehicles.find {|v| v.vehicle_number == number}
    if vehicle
      vehicle.rent_vehicle
    else
      puts "No vehicle Available"
    end

  when 3
    puts "Enter Vehicle Number"
    number = gets.chomp.to_i

    vehicle = vehicles.find {|v| v.vehicle_number == number}
    if vehicle
      vehicle.return_vehicle
    else
      puts "No vehicle Available"
    end

  when 4
    available_vehicle = vehicles.select {|v| v.available?}
    if available_vehicle.empty?
      puts "No Available Vehicles"
    else
      available_vehicle.each do |vehicle|
        vehicle.dispaly_vehicle
      end
    end

  when 5
    puts "Thank you"
    break

  else
    puts "Invalid choice"
  end
end

