
	#Class specification in ruby 
	# Class names are Pascal Case. 
	#class names are technically a constant 
	 class Employee
		 #the initialize method is the constructor 
		 def initialize(empId,empName,empSalary,empIsactive)
			 @empId=empId
			 @empName=empName
			 @empSalary=empSalary
			 @empIsactive = empIsactive
		 end 
		 
		 #setting and gettting
		 def set_empid(eid)
			 @empId=eid
		 end 
		 
		 def get_empid
			 return @empId
		 end 
	 end 
	 
	 #instantiating objects 
	 
	 aks=Employee.new(1, "Syed Awase Khirni", 123123213, true)
	 puts(aks.inspect)
 
 
 ###############################
class Food
	 attr_accessor :itisa, :weight, :calory
	 def initialize(itisa, weight, calory)
		 @itisa=itisa
		 @weight=weight
		 @calory=calory
	 end
		def getcalories
			val =@calory*@weight/100.0
			return "%7.2f" %val
		end 
end 
		 
	organic_milk = Food.new("Orangic Milk", 250,70)
	orange= Food.new("Orange", 47,40)
	meat = Food.new("Mutton", 75,200)
	mylunch=[meat,orange, organic_milk]
	
	mylunch.each do |current|
		cals=current.getcalories()
		wot=current.itisa()
		puts "This #{wot} has #{cals} calories"
	end 
	
	
	#######################

#example 2
# Box drawing class.
class Box
  # Initialize to given size, and filled with spaces.
  def initialize(w,h)
    @wid = w
    @hgt = h
    @fill = ' '
  end

  # Change the fill.
  def fill(f)
    @fill = f
    return self
  end

  # Rotate 90 degrees.
  def flip
    @wid, @hgt = @hgt, @wid
    return self
  end
  
  # Generate (print) the box
  def gen
    line('+', @wid - 2, '-')
    (@hgt - 2).times { line('|', @wid - 2, @fill) }
    line('+', @wid - 2, '-')
  end
  
  # For printing
  def to_s
    fill = @fill
    if fill == ' '
      fill = '(spaces)'
    end
    return "Box " + @wid.to_s + "x" + @hgt.to_s + ", filled: " + fill
  end

private
  # Print one line of the box.
  def line(ends, count, fill)
    print ends;
    count.times { print fill }
    print ends, "\n";
  end
end

# Create some boxes.
b1 = Box.new(10, 4)
b2 = Box.new(5,12).fill('$')
b3 = Box.new(3,3).fill('@')

print "b1 = ", b1, "\nb2 = ", b2, "\nb3 = ", b3, "\n\n"

# Print some boxes.
print "b1:\n";
b1.gen

print "\nb2:\n";
b2.gen

print "\nb3:\n";
b3.gen

print "\nb2 flipped and filled with #:\n";
b2.fill('#').flip.gen
print "\nb2 = ", b2, "\n"



####################################
# Alternative approach for accessors and modifiers in classes

class Treasure 
	def initialize(aName)
		@name=aName
	end 
	def name
		return @name
	end 
	def name=(aName)
		@name=aName
	end 
end 

myruby = Treasure.new("ruby")
p(myruby)
myruby.name="diamond"
p(myruby)

###############################
#alternative approach shortcut 

class Journey 
	#alternative approach to create getter and setter methods with instance variable
	attr_reader :startJr,:endJr,:startDate,:endDate, :gpsStart,:gpsEnd
	attr_writer :startJr,:endJr,:startDate,:endDate, :gpsStart,:gpsEnd
	def initialize(startJr,endJr,startDate,endDate, gpsStart,gpsEnd)
		@startJr=startJr
		@endJr=endJr
		@startDate=startDate
		@endDate = endDate
		@gpsStart = gpsStart
		@gpsEnd=gpsEnd
	end 
end 

home_to_airport = Journey.new("hrbr","KIA:Bng", "7/14/2014", "7/14,2014", 12.77,13.12)
p(home_to_airport.inspect)



#another example using accessor

class Animal 
	attr_accessor :name,:age,:weight
	attr_reader :breed,:modified 
	def initialize(name, age, weight, breed)
		@name=name
		@age=age
		@weight=weight
		@breed=breed
		@cached=0
		@modified=0
	end
	def modified=(newval)
		@modefied=newval
	end 
	
end 

 germanshepherd= Animal.new("Bruno", 3, 34,"german shepherd")
 blue = Animal.new(" blue Parrot", 2,3.2,"Amazon Blue Parrot")
 
p(germanshepherd.inspect)
p(blue.inspect)

##########################
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
  NUMBER_OF_DOORS = 2
end
#########################
class Student
  def initialize(name, grade)
    @name = name
    @grade = grade
  end

  def better_grade_than?(other_student)
    grade > other_student.grade
  end

  protected

  def grade
    @grade
  end
end

joe = Student.new("Joe", 90)
bob = Student.new("Bob", 84)
puts "Well done!" if joe.better_grade_than?(bob)


#moviereview class 
class Movie 
	attr_accessor :title, :thumbs_up, :thumbs_down
	def initialize(title, thumbs_up, thumbs_down)
		@title=title
		@thumbs_up=thumbs_up 
		@thumbs_down =thumbs_down
	end 
end


class PlayList 
	def initialize(name)
		@name=name
		@movies =[]
	end
	
	def add_movie(movie)
		@movies << movie 
	end

	def play 
		puts "#{@name}'s playlist:"
		puts @movies

		@movies.each do |m|
			m.thumbs_up
			puts m
		end 
	end 

end 

movie1 = Movie.new("PK", 10, 2)
movie2 = Movie.new("batman", 18, 1)
movie3 = Movie.new("Fast and Furious", 20, 0)
movie4 = Movie.new("Star Wars", 90, 2)

playlist1=PlayList.new('SyedAwase')
playlist1.add_movie(movie1);
playlist1.add_movie(movie2);
playlist1.add_movie(movie3);
playlist1.add_movie(movie4);

playlist1.play







