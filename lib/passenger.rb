class Passenger

  attr_reader :name, :age, :driver

  def initialize(passenger_hash = {})
    @name = passenger_hash["name"]
    @age = passenger_hash["age"]
    @driver = false
  end

  def adult?
    return @age >= 18
    false
  end

  def drive
    @driver = true
  end
end
