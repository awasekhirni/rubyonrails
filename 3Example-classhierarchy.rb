#creating class hierarchies 

#class specification 
#parent class/super class/base class
class Thing 
	def initialize(aName, aDesc)
		@aName=aName
		@aDesc = aDesc
	end
	def get_name
		return @aName
	end
	def set_name(aName)
		@aName=aName
	end 
	def get_description
		return @aDesc
	end
	def set_description(aDesc)
		@aDesc=aDesc
	end
end 

# Pen descends from Thing
#derived class/subclass
class Pen < Thing 
	def initialize(aName,aDesc,aType,inkColor)
		super(aName, aDesc)
		@aType=aType
		@inkColor = inkColor
	end 
	def get_type 
		return aType
	end 
	def set_type(aType)
		@aType=aType
	end 
	def get_inkcolor(inkColor)
		return inkColor
	end 
	def set_inkcolor(inkColor)
		@inkColor =inkColor
	end 
end 

#creating an instance of pen 
reynolds = Pen.new("Reynolds Jetter", "Ball point pen", "ball-point","black")
puts(reynolds.inspect)
