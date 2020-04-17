
#shuffling the order in an array 
#methods
def shuffling(arr)
    for n in 0...arr.size
        targ = n + rand(arr.size - n)
        arr[n], arr[targ] = arr[targ], arr[n] if n != targ
    end
end

# Make strange expressive statements!!!
def pairs(a, b)
    a << 'Insane'
    shuffling(b)
    b.each { |x| shuffling(a); a.each { |y| print y, " ", x, ".\n" } }
end
first = ['happy', 'funny', 'Weird','Amazed','Shocked', 'laughing','puzzled']
pairs(first, ['awase', 'azeez', 'rayyan', 'ameese','shagufta'])
print "\n", first.join(" "), "\n"


# Add the strings before and after around each parm and print

def mywraps(sffix, prfix, *items)
    items.each { |x| print sffix, x, prfix, "\n" }
end

mywraps('[', ']', 'Syed Awase ', 'Syed Azeez', 'Syed Ameese')
print "\n"

mywraps('<', '>', 'Syed Rayyan', 'Syed Nayyirah Fathima', 'Syed Simra Fathima', 'Syed Shagufta')
print "\n"

def myfunction(a, b, c, d)
    print "a = #{a} b = #{b}, c = #{c}, d = #{d}\n"
end

# Use * to adapt between arrays and arguments
a1 = ['snack', 'fast', 'junk', 'pizza']
a2 = [4, 9]
myfunction(*a1)
myfunction(17, 3, *a2)