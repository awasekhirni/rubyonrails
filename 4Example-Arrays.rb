#Array in ruby 

my_array=["Syed Awase", 11212, 3.123, "Syed Azeez", "Syed Ameese Sadath", "SYCLIQ","TPRI"]

my_array.each do |i|
	puts(i)
end


#variables and expressions
a =100
b= 3*a+a**4

printf("%d %d\n", a,b);

b= "Syed Awase Khirni"
c="Syed Azeez Al Asaad"
print b+"and"+c+"\n"

#double-quoted string can subsitute variables 
a=7126312
print("a=#{a}\n")


#paragraphs with multi-line strings can be created in ruby like this 
mystring= <<ENDER
You should have a smart kid or a billion dollars,
Even if you have a billion dollars, you still need a smart kid, 
who can sustain the billion dollars you have earned.
-syed moinuddin kirmani
ENDER

#string operations 
dad_strings="The moment you try to sand in your palm tighter and tighter it tries to slip away, 
same applies to humans";
printf(dad_strings+"\n")
printf("%c\n", dad_strings[15])
#extracting a sub string from the actual string 
printf("range:"+dad_strings[16..30]);

print (dad_strings.reverse+"\n")
print( dad_strings.index("tighter"))
print (dad_strings[40..47]*3+"\n")
print "Wow " * 3, "\n"


#Arrays in ruby 
my_marks = [89,98,88,78,68]
b=['Syed Awase', 'Syed Rayyan', 'Syed Azeez', 2812.121, 123.22, true, false, 'smart']
print ((my_marks+b).join('')),"\n"
print(my_marks.sort.join(''))
#inserting in new values into the b array
b << "Syed Ameese"  << 47 << 121232313
#displaying the new data in b
print "Values of array b", b.join(''),"\n"
#poping the values in the array b
print"popping the values::", b.pop,"\n"
#deleting the values 
b.delete_at(5)
b.delete('smart')
print(b)

print("##################################################################")

#hashes 
#similar to maps or dictionaries in other languages. 
cricket_scores= { 'syed' => 75, 'azeez' => 18, 'rayyan' => 32 }
cricket_scores['ameese'] = 44
print cricket_scores['syed'], " ", cricket_scores['azeez']," ",cricket_scores['rayyan'],"\n"
print cricket_scores.has_key?('syed'), "      ",cricket_scores.has_key?('tom'),"\n"




#Arrays in ruby 
myarray=["1000", "110", "2212", "313", "51" ,"1213","31223", "535251" ,"26453","212", "89819" ,"99188","313998", "51998" ,"2981713"]
#getting the length of an array
puts myarray.length 
#aaccessing elements of an array 
puts myarray[9]
#alternative way to access elements of an array 
puts myarray.at(7)
#another alternative way to access elements of an array 
puts myarray.fetch(14)
#fetching the first elements of the array 
puts myarray.first 
#fetching the last elements of the array 
puts myarray.last 
# returning a subset of elements of an array 
puts("#################")
puts myarray.take(3)
#returns opposite of take, by excluding the first 3 times and displaying all 
puts("$$$$$$$$$$$$$$$$$$$$")
puts myarray.drop(3)
puts myarray.empty?
# to add a new item to the array 
puts myarray.unshift("7860")
#inserting an item at a specific position using "insert"
puts myarray.insert(10, "7777777777")
puts myarray
# to remove an item from array 
puts myarray.pop()
#to remove nil values from an array we use "compact"
myarray.compact 


#non-destructive selection of an array 
myarray.select {|a| a>777}
myarray.reject {|a| a<777777777777}

#destructive selection 
myarray.delete_if {|a| a>777}
myarray.keep_if {|a| a<777777777777}

#Hashes are sometimes known as associative arrays, maps or dictionaries.
#similar to array, they are indexed collections of object references. 
ssn_ids={
	'ahepkxxxn'=>'Syed Awase',
	'ahemqxxxn'=>'Syed Azeez',
	'ahevfxxxy'=>'Syed Ameese',
	'ahepkyqhan'=>'Bisheng Yang',
	'ahemiakfj'=>'Joe Wong',
	'aheuq14124k'=>'william strings'

}

p ssn_ids['ahepkxxxn']
p ssn_ids['ahemiakfj']

#using hashes and arrays 

def scan_words_sentence(string)
	string.downcase.scan(/[\w']+/)
end

def word_frequency(sentence)
	counts=Hash.new(0)
	for word in sentence
		counts[word]+=1
	end 
	return counts 
end 
sentence= "My name's Ed Snowden, I'm 29 years old. I work for Booz Allen Hamilton as an infrastructure analyst for NSA in Hawaii. With those words, the young whistleblower revealed he was the source of the biggest intelligence leak in the history of America's National Security Agency, and became the face of a story that has convulsed governments and set the news agenda around the world. This exclusive video interview by reporter Glenn Greenwald and filmmaker Laura Poitras became the single most viewed Guardian story of 2013."
puts word_frequency(scan_words_sentence(sentence))


#symbols in ruby 
#symbols are simply constant names that don't have to predeclare and they are guaranteed to be unique 

NORTH=N
EAST=E
WEST=W
SOUTH=S 

def walk(direction)
	if direction == :east 
		puts you are going east 
	end 
end 

#Catch and thow exception 

sentence= "My name's Ed Snowden, I'm 29 years old.\n I work for Booz Allen Hamilton as an infrastructure analyst for NSA in Hawaii. With those words, the young whistleblower revealed he was the source of the biggest intelligence leak in the history of America's National Security Agency, and became the face of a story that has convulsed governments and set the news agenda around the world. \n This exclusive video interview by reporter Glenn Greenwald and filmmaker Laura Poitras became the single most viewed Guardian story of 2013."

 catch(:done) do 
 	result=[]
 	while line = sentence
 		word=line.chomp
 		throw :done unless word=~ /^\w+$/
 		result <<word 
 	end 
 	puts result.reverse 
 end 
























