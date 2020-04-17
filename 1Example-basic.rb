#Hello world example 
puts "hello! Syed Awase".reverse
puts ("hello! Syed Awase-- did you get RUBY DIAMOND")

puts "1+2=#{1+2}"

#first example of ruby 
print("Enter how much money do you have?:")
money = gets()
#here money is a local variable
puts("Give me all your #{money} -- joking!!" )
# is that all the money you have syed 
puts("Syed how much money did he give #{money}".upcase)

#getting input from the command line 
puts("Hi! Syed-- What would you like to watch, Game of Thrones, Reid Hoffman videos, StartUpValuation, IJGIS")
syed_selection=gets()
# this will return syed's input with new line character. 
# if you would like to remove special characters use//=> chomp
syed_selection=gets.chomp()

#local variable 
5.times do 
  my_localcount="Need to get TPRI/SYCLIQ TO SERIES A"
  p my_localcount
end 

#global variable 
#block 
5.times do
	$my_gblvar="SycliQ App setting: 24 C Temp"
end 
	puts($my_gblvar)
	
	#printing the current time 
	t= Time.new
	puts t
	puts t.class
	
	#rank
	rank= 15/2
	frank=16/2.0
	puts rank.class
	puts frank.class
	
	
	puts "my rank is #{rank *2}"

	myrank=rank
	
	puts rank.object_id
	puts myrank.object_id

	#reference to the object not value
	#string objects 
	myname="Syed Awase"
	yourname="Syed Azeez"
	myname=yourname
	puts myname.object_id
	puts yourname.object_id
	#length
	puts myname.length 
	#reverse operation 
	puts myname.reverse
	puts myname
	#reversing the actual/original string
	puts myname.reverse!
	puts myname
	#center the string in the number of characters
	puts myname.center(20)
	#ljust method for left justifications
	puts myname.ljust(30,">")
	#rjust methods for right justifications
	puts myname.rjust(20,"<")
	#checks 
	myname.start_with?("A")
	myname.include?("X")
	
	#converting number to string using .to_s method
	puts rank.to_s
	#converting number to float using .to_f method 
	puts rank.to_f 
	#converting number to integer using .to_i method 
	puts rank.to_i 
	
	
	#time object operations 
	current_time = Time.new 
	puts current_time 
	puts current_time.hour
	today=current_time.strftime("%A")
	puts today

	#Title
	company_name="territorial prescience"
	mycn=company_name.capitalize.ljust(30,",")
	puts mycn

	#case comparison of strings 
	"SyedAwaseK".casecmp?("syedawase")
	"SyedAwase".casecmp?("syedawase")


	#chop =>returns a new string with the last character removed. 
	puts "SyedAwaseK".chop 

	#chr=> returns a one-character string at the beginning of the string 
	mystring="syedawase"
puts mystring.chr 

	#to remove leading/trailing whitespaces in a string 
	puts "    syed works hard and is self taught".lstrip!
	puts "Syed works hard and is self taught             ".rstrip!


	#partition a string 
	puts "SyedXAwase".partition('X')

	#preprending a given string to another string 
	myfavTVseries="Game of Thrones"
	anotherfavTVseries = "Breaking Bad"
	puts myfavTVseries.prepend(anotherfavTVseries)




