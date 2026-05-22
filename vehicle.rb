class Vehicle
  include RentalCharge
  attr_reader :vehicle_number, :brand, :rental_price
  
  def initialize(vehicle_number, brand, rental_price)
    @vehicle_number = vehicle_number
    @brand = brand
    @rental_price = rental_price
    @available = true
  end
  
  def available?
    @available
  end

  def rent_vehicle
    if available?
      @available = false
      puts "#{vehicle_number} vehicle is rented"
    else
      puts "Not available for rent"
    end
  end

  def return_vehicle
    @available = true
    puts "#{vehicle_number}Vehicle is returned"
  end

  def dispaly_vehicle
    status = available? ? "Available" : "Not Available"

    puts "----------------------"

    puts "Vehicle_number: #{vehicle_number}"
    puts "Brand: #{brand}"
    puts "Rental_price: #{rental_price}"
    puts "Status: #{status}"  
  end

end