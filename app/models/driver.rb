
class Driver
  attr_accessor :driver
  @@all = []
  @@over_mileage = []

  def initialize(driver)
    @driver = driver
    @@all << self
  end

  def self.all
    @@all
  end

  def rides
    Ride.all.select {|ride| ride.driver == self}
  end

  def passenger_names
    passengers = []
    self.rides.each {|ride| passengers << ride.passenger.name}
    passengers.uniq
  end

  def mileage_total
    count = 0.0
    Ride.all.each do |ride|
      if ride.driver == self
        count += ride.distance
      end
    end
    count
  end

  def self.mileage_cap(distance)
    all.each do |driver|
      if driver.mileage_total > distance
        @@over_mileage << driver
      end
    end
    @@over_mileage
  end

end
