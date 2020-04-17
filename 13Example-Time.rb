#time in ruby 
mytime = Time.new(2007,5,11)
currentTime=Time.new()
##creating a new time using ::at 
# it takes the number of seconds from Unix Epoch(January 1, 1970 00:00 ) 
yourtime = Time.at(312341323121234)
puts yourtime
puts mytime 
puts currentTime
#checking for the day of the week 
puts mytime.monday?
#getting the year 
puts mytime.year
#getting the month 
puts mytime.month
#checking for daylight savings at that time 
puts mytime.dst? 
#computing the day a year later?
nuoyr=mytime+(60*60*24*365)
puts nuoyr
#computing the weekday from the date 
puts mytime.strftime("%A")
puts nuoyr.strftime("%A")
#computing how many seconds was this from UNIX Epoch
puts mytime.to_i
#creating a cannoical string representation of time
puts Time.now.asctime 
puts mytime.asctime 
#computing the day of the month 
puts mytime.day 
puts mytime.mday
#returning the values to an array 
puts Time.now.to_a 