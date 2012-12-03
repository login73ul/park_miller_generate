require "./park_miller_generate"
puts "input pwd"
string = gets.chomp
s = ParkMiller.new()
puts "Generating hash..."
puts "Hash generated: #{s.pm_hash(string)}"
