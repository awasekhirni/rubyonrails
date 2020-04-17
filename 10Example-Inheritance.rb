
#Inheritance examples in ruby 

class PublicTransport 
	@@optcount =0
	def initialize(destiny, deptime)
		@destiny=destiny
		@deptime =deptime 
		@@optcount+=1
		@my_id = @@optcount 
	end
	def getdest()
		return @destiny
	end 
	def getid()
		return @my_id
	end 
end


class Train< PublicTransport 
	def initialize(destiny, deptime, coaches)
		super(destiny,deptime)
		@coaches = coaches 
	end 
	def getnv()
		return @coaches
	end 
end 

shatabdi= Train.new("bangalore", 5.15, 24)
p(shatabdi.inspect)


# Amending a base class even after it has been extended

# Base Class

class Rectangle
        def initialize(w,h)
                @w = w
                @h = h
                @@cc += 1
                @art = (w+3.0) / (h+2.0)
                end

        def getarea()
                @w * @h
                end
end

# Subclass

class Square < Rectangle
        def initialize(w,art)
                super(w,w)
                @art = art
                end
        end

# Modify the base class!

class Rectangle
        def getarea()
                (2+@w) * (2+@h)
                end

        def getcc()
                @@cc
                end
        @@cc = 0

end

# test harness - only run if stand alone

if __FILE__ == $0

        first = Rectangle.new(12,4)
        second = Square.new(13,2.5)

        puts first.getarea()
        puts second.getarea()

        puts "Number created - #{first.getcc}"

        end
