class Passenger
  attr_reader :name
  @@all = []
  @@premium_members = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def rides
    Ride.all.select {|ride| ride.passenger == self}
  end

  def drivers
    driver_arr = []
    self.rides.each {|ride| driver_arr << ride.driver}
    driver_arr
  end

  def total_distance
    distance_count = 0.0
    self.rides.each do |ride|
      distance_count += ride.distance
      if distance_count >= 100
        @@premium_members << self
      end
    end
    distance_count
  end

  def self.premium_members
    @@premium_members
  end

end
