#modules in ruby 
########################
#Tax calculation module 

module Taxcalc
  VAT_RATE = 15.0
  def Taxcalc.net(gross)
    net = gross / (100.0 + VAT_RATE) * 100.0
    return net
  end
	  def Taxcalc.tax(gross)
		tax = gross - net(gross)
	end
end

amount=100.60
shopkeeper=Taxcalc.net(amount)
vatman=Taxcalc.tax(amount)
print "#{vatman} to the taxman\n"
print "#{shopkeeper} to the supplier\n"
print "Tax rate is #{Taxcalc::VAT_RATE}\n"

#####################################
module Week 
  FIRST_DAY="SUNDAY"
  def Week.weeks_in_month 
	  puts  "There are 4 weeks in amonth"
  end 
  def Week.weeks_in_year
	  puts "there are 52 weeks in a year"
  end 
end

class Decade 
	include Week 
	no_of_years =10
	def no_of_months
		puts Week::FIRST_DAY
		number =10*12
		puts number
	end 
end

d1=Decade.new
puts Week::FIRST_DAY
Week.weeks_in_month 
Week.weeks_in_year 
d1.no_of_months

######################
module Towable
  def can_tow?(pounds)
    pounds < 2000 ? true : false
  end
end

class Vehicle
  @@number_of_vehicles = 0

  def self.number_of_vehicles
    puts "This program has created #{@@number_of_vehicles} vehicles"
  end

  def initialize
    @@number_of_vehicles += 1
  end

  def self.gas_mileage(gallons, miles)
    puts "#{miles / gallons} miles per gallon of gas"
  end
end

class MyCar < Vehicle
  NUMBER_OF_DOORS = 4
  #code omitted for brevity...
end

class MyTruck < Vehicle
  include Towable

  NUMBER_OF_DOORS = 2
end

puts MyCar.ancestors
puts MyTruck.ancestors
puts Vehicle.ancestors

##############
module Towable
  def can_tow?(pounds)
    pounds < 2000 ? true : false
  end
end

class Vehicle
  attr_accessor :color
  attr_reader :model, :year
  @@number_of_vehicles = 0

  def initialize(year, model, color)
    @year = year
    @model = model
    @color = color
    @current_speed = 0
    @@number_of_vehicles += 1
  end

  def speed_up(number)
    @current_speed += number
    puts "You push the gas and accelerate #{number} mph."
  end

  def brake(number)
    @current_speed -= number
    puts "You push the brake and decelerate #{number} mph."
  end

  def current_speed
    puts "You are now going #{@current_speed} mph."
  end

  def shut_down
    puts "Let's park this bad boy!"
  end

  def self.gas_mileage(gallons, miles)
    puts "#{miles / gallons} miles per gallon of gas"
  end

  def spray_paint(color)
    self.color = color
    puts "You new #{color} paint job looks great!"
  end
end

class MyTruck < Vehicle
  include Towable

  NUMBER_OF_DOORS = 2

  def to_s
    "My truck  is a #{self.color}, #{self.year}, #{self.model}!"
  end
end

class MyCar < Vehicle
  NUMBER_OF_DOORS = 4

  def to_s
    "My car is a #{self.color}, #{self.year}, #{self.model}!"
  end
end

lumina = MyCar.new(1997, 'chevy lumina', 'white')
lumina.speed_up(20)
lumina.current_speed
lumina.speed_up(20)
lumina.current_speed
lumina.brake(20)
lumina.current_speed
lumina.brake(20)
lumina.current_speed
lumina.shut_down
MyCar.gas_mileage(13, 351)
lumina.spray_paint("red")
puts lumina
puts MyCar.ancestors
puts MyTruck.ancestors
puts Vehicle.ancestors


#############################






