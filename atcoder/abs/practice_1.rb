in1 = gets
in2 = gets
in3 = gets

puts "#{in1.to_i + in2.split(' ').map(&:to_i).inject(&:+)} #{in3}"
