class Vehicle
  @@vehicles =[]

  include RentalCharge
  attr_reader :vehicle_number, :brand, :rental_price
  
  def initialize(vehicle_number, brand, rental_price)
    @vehicle_number = vehicle_number
    @brand = brand
    @rental_price = rental_price
    @available = true
  end

  def add_vehicle
    @@vehicles << self
  end
  
  # def self.available?
  #   @available
  # end

  def rent_vehicle
    if @available
      @available = false
      puts " #{vehicle_number} vehicle is rented"
    else
      puts "Not available for rent"
    end
  end

  def return_vehicle(rent_hours)
    if !@available
      total = calculate_rental_cost(rent_hours)
      @available = true

      puts "#{@brand} Returned Successfully"
      puts "Total Retal cost : #{total}"
    else
      puts "#{brand} was not rented"
    end
  end

  def self.dispaly_vehicle
    @@vehicles.each do |vehicle|
      status = vehicle.instance_variable_get(:@available) ? "Available" : "Not Available"

      puts "----------------------"

      puts "Vehicle number: #{vehicle.vehicle_number}"
      puts "Brand: #{vehicle.brand}"
      puts "Rental price: #{vehicle.rental_price}"
      puts "Status: #{status}"  
    end
    
  end

end