x = 10
puts "x is #{x}"

x += 20

puts "x is #{x}"

def  print_doubled_value(x)
  orig = x
  x = x * 2
  puts "double the value of #{orig} is #{x}"
  puts "inner x is now #{x}"
end

print_doubled_value(x)

y = 27

print "outer x is: #{x}"