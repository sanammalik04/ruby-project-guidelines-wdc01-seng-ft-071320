require_relative '../config/environment'

cli = Cli.new
cli.start_app

binding.pry

puts "HELLO WORLD"
