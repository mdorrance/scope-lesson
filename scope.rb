# x is the variable outside the scope of the method but has access
# because it is passed in the method params
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


# b is NOT passed in because it is not in the combine_var(a)
# b is locked out by the method call
a = 4
b = 12

def dombine_var(x)
  puts "inner x is #{x}"
  puts "and outer b is #{b}"
end

combine_var(a)