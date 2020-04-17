#Enumerator in ruby 
Enumerator in ruby 
my_data=[1,21,41,52,"syed awase","syed ameese"]
your_data={pet_one:"mogly",pet_two:"bhagira"}
#create enumerators 
enum_myd=my_data.to_enum 
enum_yd=your_data.to_enum

puts enum_myd.inspect 
puts enum_yd.inspect 
puts enum_myd.class
puts enum_yd.class 
enum_yd.next

#ranges in ruby 
#ranges to an array 
#two-dot form 
puts (1..10).to_a
puts ('a'..'z').to_a 
#ranges to enum 
#two-dot form 
my_e=('ba'..'bz').to_enum 
puts my_e.next
puts my_e.next

puts my_scores = 90..99
puts my_scores.include?(95)
puts my_scores.min 
puts my_scores.max 
puts my_scores.reject{|i|i>96}
puts my_scores.inject(:+)

#three-dot form 
my_val=(1...11).to_a 
puts my_val 
