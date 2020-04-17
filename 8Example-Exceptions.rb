
# Count and report the number of lines and characters in a file.
#try catch block for exception handling is begin-rescure block in ruby
print "File name: "
fn = gets.chomp
#equivalent to try 
begin
    f = open(fn)
    nlines = 0
    length = 0
    f.each { |line| nlines += 1; length += line.length }
	#equivalent to catch
rescue
    print "File read failed: " + $! + "\n"
else
    print fn, ": ", nlines, " lines, ", length, " characters.\n"
end


#list operations in ruby 
marks = [ 89, 97, 68, 49, 87, 93, 72 ]
students = [ 'Syed Awase', 'Syed Ameese', 'Azeez', 'Anthony', 'Sam', 'Robin','Michael' ]

# Compute a new array with each member of fred doubled.
marks = fred.map { |x| 2 * x }
print marks .join(" "), "\n"

# Create a new alex adding " went away" to each member.  Then join and
# print the result.
print (students.map { |z| z + " scored" }).join("  "), "\n"

# Print the members of fred which are more than five and less than 20.
print (marks.select { |z| z > 5 && z < 20 }).join(" "), "\n"

# Print the lengths of the members of alex that start with A or end with e.
print ((students.select { |n| n =~ /^A/ || n =~ /e$/ }).map { |z| z.length }).
        join(" "), "\n"

# Update alex by surround each of its members with [ ]
students.map! { |a| "[" + a + "]" }
print students.join(" "), "\n"