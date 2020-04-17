#control structures 

#if else constructs in ruby programming 
my_randomvalue = rand(1000) +11
print("the magic random number is:",my_randomvalue, "\n")
if my_randomvalue%2 ==1 then 
		print "the random number generated is an odd number \n"
	else
		print	"the random number generated is an even number \n"
	end 

#unless keyword is like IF, but uses opposite SENSE of the test. 
# the code is run if the test is FALSE. 
print("Choice please: proteins with orange for mind gasms or carbs with nuts \n")
my_choice= gets.chomp()
unless my_choice = 'proteins' || my_choice='carbs'
	print "I said proteins please or carbs \n"
	exit(1)
end 



#while loop 
back_count =100
while back_count <1
	back_count =back_count -1
	print back_count
end 

# Here's a way to empty an array.
todotask = [ 'I won\'t do it', 'I can\'t do it', 'i want to do it', 'how do i do it', 'i will try to do it' ,'I can do it','i will do it',' i have done it', 'i have excelled it']
print(todotask.pop, "\n") while todotask.size > 0
print "\n"



#case statement 
print("Your course grades are:")
course_grade= gets.chomp()
case course_grade
when "A+"
	puts "You top 2% of the class"
when "A"
	puts "You are top 5% of the class"
when "B+"
	puts "You are top 10% of the class"
when "B"
	puts "You are top 15% of the class"
when "C+"
	puts "You are top 20% of the class"
when "C"
	puts "You are top 25% of the class"
when "D"
	puts "You are top 30% of the class" 
	else 
		puts " You do not belong to the class: You are in your own league!!"
end


#for loop
for current_iteration_number in 1..10 do
   puts "Hello ! You fool, I love you  #{current_iteration_number} times!!"
end

# continuous looping ruby
loop do
  puts "We will test your patience until you hit Ctrl + c"
end

#until loop 
x = gets.chomp.to_i

until x < 0
  puts x
  x -= 1
end

puts "Done!"


#do while loop in ruby
loop do
  puts "Do you want to do that again?"
  answer = gets.chomp
  if answer != 'Y'
    break
  end
end

###############
#Fixnum Class loops : times, upto and downto 
for key in 1..10 do 
   puts "Number #{key}" 
end

10.times do |key|
   puts "Number #{key+1}"   
   #   times will start at 0, so on the 10th iteration, key is equal to 9
end

1.upto(10){ |key| puts "Number #{key}"}

#preferred way by ruby programmers
for key in 1..10 do
   puts "#{key}. Too much legacy fun"
end

(1..10).each do |key|
   puts "#{key}. Lazy short cut approach"
end                  

(1..10).each{ |key| puts "#{key}. Laziest short form "}



#Iterators in ruby 
tasks=[ 'I won\'t do it', 
			'I can\'t do it',
			'i want to do it',
			'how do i do it',
			'i will try to do it' ,
			'I can do it',
			'i will do it',
			' i have done it',
			'i have excelled it'
			]
tasks.each{|task| puts task}
#alternatively it can be written as 
x=1
tasks.each do |task|
	puts "#{x}.#{task}"
	x+=1
end 


#recursion in ruby 
def cubicOf(myNo)
  puts myNo ** 3
end

cubicOf(10)

def cubicOf(myNo)
  puts myNo
  if myNo < 100
    cubicOf(myNo ** 3)
  end
end
cubicOf(12)


#fibonaci sequence 
#f(n) = f(n-1)+f(n-2)
def fibonacci(number)
  if number < 2
    number
  else
    fibonacci(number - 1) + fibonacci(number - 2)
  end
end

puts fibonacci(60)


















