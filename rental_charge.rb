module RentalCharge
  def calculate_rental_cost(days)
    total = rental_price * days
    puts "Total rent of #{days} days is : #{total}"
  end
end