#Threads in Ruby 
#1.8 ruby threads were managed by the interpreter and were called as GREEN THREADS
#1.9 ruby threads were managed by the OS and are native threads. 

#creating Ruby threads 
Thread.new{puts "Hello, i am a thread in a process"}
my_thread=Thread.new{puts 10**10**10}

#celluloid is multithreaded programming package for ruby 

my_threads=[]
21.times{
my_threads<<Thread.new{puts 21}
}
my_threads.each(&:join)

#raising exception in threads
Thread.new{raise "your voice against oppression"}
Thread.abort_on_exception=true


####
Thread.fork {
    while true
      puts 'forked thread'
    end
}
while true
  puts 'main thread'
end

#Thread Pools
# when there are more items to process
#thread pools allow you to control the number of active threads at any given time
# there by managing the performance of your machine. 

#celluloid is a multithreaded programming package for ruby 
#https://celluloid.io/
require 'celluloid'
class Worker
	include Celluloid
	def process_page(url)
		puts url
	end 
end 

pages_to_crawl = %w(index about contact product)
worker_pool = Worker.pool(size:5)
pages_to_crawl.each do |page|
	worker_pool.process_page(page)
end 

####fiber 
words = Fiber.new do
File.foreach("tfile.txt") do |line|
  line.scan(/[\w']+/) do |word|
  Fiber.yield word.downcase
    end
  end
end
counts = Hash.new(0)
while word = words.resume
counts[word] += 1
end
counts.keys.sort.each {|k| print "#{k}:#{counts[k]} "}