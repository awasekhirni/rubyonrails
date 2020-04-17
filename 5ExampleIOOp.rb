
# basic input out operations in ruby
print("please enter your name:")
#chomp removes special line characters
name=gets.chomp
print(name)
print("please enter your country:")
cntry=gets()
print(cntry)
print("please enter the product price:")
#to_f() is used to convert string to a floating point number 
price = gets.to_f();
print(price)

#reading and write 
print("please enter the file name:")
fn=gets.chomp
handle=open(fn,"w")
printf(handle, "%s %s %s",
        name, cntry, price)
handle.close

#parallel assignment operation in ruby
#setting values to several variables at once. 
a, b, c = 63, 12, 244
print "A: a = ", a, ", b = ", b, ", c = ", c, "\n"
# Compute three values, then assign three values.
a, b, c = 72, a + 123, a + b + c
print "B: a = ", a, ", b = ", b, ", c = ", c, "\n"

# Swap.
a, b = b, a
print "C: a = ", a, ", b = ", b, ", c = ", c, "\n"

# Extras on left get nil.
a, b, c = 213, 311
print "D: a = ", a, ", b = ", b, ", c = ", c, "\n"

# Extras on right get left behind
a, b, c = 938, 736, 1732, 1323, 1523
print "E: a = ", a, ", b = ", b, ", c = ", c, "\n"

# The right can be an array, in which case the members are assigned to
# individual variables.
val = [ 4, 5, 6, 7]
a, b, c = val
print "F: a = ", a, ", b = ", b, ", c = ", c, "\n"


###########################
#file IO Operation 
begin
  f = File.open 'queen-msg2013-christmas.txt'
  while line = f.gets
    puts line
  end
ensure
  f.close
end


##reading all the file contents at once 
content = File.readlines "queen-msg2013-christmas.txt"
content.each_with_index{|line, i| puts "#{i+1}: #{line}"}

# printing line by line 
File.foreach( 'queen-msg2013-christmas.txt' ) do |line|
  puts line
end

#using file handlers to control the reads 
File.open( 'queen-msg2013-christmas.txt' ) do |f|
  loop do
    break if not line = f.gets
    puts "#{f.lineno}: #{line}"
  end
end
















