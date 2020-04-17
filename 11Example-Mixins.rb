#mixin in Ruby 

module Greetings 
	def hello
		puts "Hello!"
	end 
	def chao
		puts "chao!"
	end 
	def namaste
		puts "namaste"
	end 
	def salaam
		puts "salaam-alai-kum"
	end
end 


class User
	include Greetings 
end 

robert = User.new 
	robert.chao
asad = User.new 
	asad.salaam
	
	##using module methods as class methods 
	class TempUser
		extend Greetings
	end 
	
	#instead of creating an instance you can call the methods directly without creating instance
	azeez=User.salaam
	joe= User.hello
	rahul=User.namaste 
	
	###############################33
	Example 2
	#module 
	module Swimmable 
		def swim
			puts "I can swim"
		end 
	end 
	
	
	##class Animal Base class 
	class Animal 
	end 
	#class Fish extends from Animal
	class Fish <Animal 
		#mixing in the Swimmable module 
		include Swimmable 
	end 
	#class Mammal extends from Animal
	class Mammal <Animal 
	end 
	#class Cat extends from Animal
	class Cat<Mammal 
	end 
	#class Dog extends from Animal
	class Dog<Mammal 
		#mixing in the Swimmable module 
		include Swimmable 
	end 
	
	samy=Dog.new()
	neemo=Fish.new()
	paws=Cat.new()
	
	samy.swim()
	neemo.swim()
	###########################################
	Example 3
	
	
	module Walkable 
		def walking
			puts "I can walk"
		end
	end 
	
	
	module Swimming
			def swim
			puts "I can swim"
		end 
	end 
	
	module Flying
		def fly
			puts "I can fly"
		end 
	end 
	
	
	module Climbing
		def climb
			puts "I can climb"
		end 
	end 
	
	module Hopping
		def hop
			puts "i can hop"
		end 
	end 

	class Animal 
		include Walkable 
		include Flying
		include Swimming
		def speak
			puts " i can make some noise"
		end 
	end 
	
	puts Animal.ancestors
	
	
	
	
	
	
	