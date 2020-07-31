require_relative '../config/environment'

cli = Cli.new
cli.start_app

puts Location.list

#binding.pry

puts "HELLO WORLD"
