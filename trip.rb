require_relative 'location'

class Trip
  # This will be an array of Location instances:
  @@stops = []

  # define a method that lets you add locations to the trips list of destinations
  def self.create(name)
    new_location = Location.new(name)
    @@stops << new_location
    new_location
  end

  def self.all
    @@stops
  end

  def self.lets_go
    puts "Began trip."
    @@stops.each_cons(2) do |a, b|
      puts "Travelled from #{a.name} to #{b.name}."
    end
    puts "Ended trip."
  end

end

Trip.create("Vancouver")
Trip.create("Toronto")
Trip.create("Ottawa")
Trip.create("Montreal")
Trip.create("Quebec City")
Trip.create("Halifax")
Trip.create("St. Johns")
