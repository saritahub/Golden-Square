# File: factorial.rb
def factorial(n)
    product = 1
    while n > 0
      binding.irb # Mystery new line!
      n -= 1
      product *= n
    end
    product
  end
  
  p factorial(5)

  # OUTPUT

#   From: 07_factorial.rb @ line 5 :

#     1: # File: factorial.rb
#     2: def factorial(n)
#     3:     product = 1
#     4:     while n > 0
#  => 5:       binding.irb # Mystery new line!
#     6:       n -= 1
#     7:       product *= n
#     8:     end
#     9:     product
#     10:   end