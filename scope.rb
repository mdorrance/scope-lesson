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
# def combine_variables(x)
#   puts "inner x is: #{x}"
#   puts "and outer b is: #{b}"
# end
#
# def b
#   12
# end
#
# b = 2
#
# a = 4
#
# combine_variables(a)
#
# #*******************************************************
#
# creatures = ["monkey", "angel", "deer"]
#
# hero = "Atlas"
#
# def battle_technique
#   ["heroically", "clumsily", "cleverly"].sample
# end
#
# creatures.each do |creature|
#   puts "#{hero} battles #{creature} #{battle_technique}"
# end

#puts creature will error out because it is local to the block
#the block has access to the local variables because it is still in the scope
#of the class as a variable

#*******************************************************
#
# new_creatures = ["patronus", "hippogriff"]
# villian = "Voldemort"
# hero = "Dumbledore"
# puts hero
# new_creatures.each do |villain|
#   hero = "Harry"
#   puts "this time the villain is the #{villain} and the hero is #{hero}"
# end
#
# puts hero # results in Harry and NOT Dumbledore
# # local variable in the block grabs "Harry" before it will outside of the block
# # can change the outside variable too so BE CAREFUL!!
#
# #*******************************************************
#
# class PizzaOven
#
# end
#
# oven = PizzaOven.new
# puts "cooking pizza in the oven #{oven}" #results in the oven object ID number
#
# #****************************************************
#
# class PizzaOven2
#   def cook
#     puts "cookin pizza in the oven #{oven}" #undefined local variable oven
#   end
# end
#
# oven = PizzaOven2.new
# oven.cook
#
# #****************************************************
# class PizzaOven3
#   def cook
#     puts "cookin pizza in the oven #{self}" #can use the number id of the oven object outside of scope
#   end
# end
#
# oven = PizzaOven3.new
# oven.cook
# print oven

#********************************************
#
# class PizzaOven4
#   def cook(temp, crust)
#     puts "Cookin #{crust} at #{temp}"
#   end
#
# def temp
#   "400 F"
# end
#
# def crust
#   "NY Style"
# end
# end
# oven = PizzaOven4.new
# oven.cook("400 F", "anchoves") # pass in the parameters
# oven.cook(oven.temp, oven.crust) # use class methods that return a VALUE as params


# class PizzaOven5
#   def cook(crust = "deep dish", temp = 300)
#     puts "Cookin #{crust} at #{temp}"
#   end
#
#   def temp
#     "400 F"
#   end
#
#   def crust
#     "NY Style"
#   end
# end
# oven = PizzaOven5.new
# oven.cook("better pizza", "400") # overrides default values

class PizzaOven6
  def cook(crust = self.crust, temp = self.temp) #can't call a circular argument but IF you add self.
    puts "Cookin #{crust} at #{temp}"
  end

  def temp
    "400 F"
  end

  def crust
    "NY Style"
  end
end
oven = PizzaOven6.new
oven.cook("better pizza", "400")