# # x is the variable outside the scope of the method but has access
# # because it is passed in the method params
# x = 10
# puts "x is #{x}"
#
# x += 20
#
# puts "x is #{x}"
#
# def  print_doubled_value(x)
#   orig = x
#   x = x * 2
#   puts "double the value of #{orig} is #{x}"
#   puts "inner x is now #{x}"
# end
#
# print_doubled_value(x)
#
# y = 27
#
# print "outer x is: #{x}"
#
##**************************************************
#
# # b is NOT passed in because it is not in the combine_var(a)
# # b is locked out by the method call
# a = 4
# b = 12
#
# def combine_var(x)
#   puts "inner x is #{x}"
#   puts "and outer b is #{b}"
# end
#
# combine_var(a)

#******************************************************

# methods can call in other methods as variables if NO local variable is present
def combine_variables(x)
  puts "inner x is: #{x}"
  puts "and outer b is: #{b}"
end

def b
  12
end

b = 2

a = 4

combine_variables(a)

#*******************************************************

creatures = ["monkey", "angel", "deer"]

hero = "Atlas"

def battle_technique
  ["heroically", "clumsily", "cleverly"].sample
end

creatures.each do |creature|
  puts "#{hero} battles #{creature} #{battle_technique}"
end

#puts creature will error out because it is local to the block
#the block has access to the local variables because it is still in the scope
#of the class as a variable
