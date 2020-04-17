#using webrick for http server 
#using webrick gem 
require 'webrick'
include WEBrick
port=9000
puts "Starting server: http://#{Socket.gethostname}:#{port}"
server = HTTPServer.new(:Port=>9000,:DocumentRoot=>Dir::pwd )
trap("INT"){ server.shutdown }
server.start

