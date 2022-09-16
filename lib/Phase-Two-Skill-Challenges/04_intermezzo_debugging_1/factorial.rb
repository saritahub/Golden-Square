def factorial(n)
    product = 1
    while n > 1
      product *= n
      n -= 1
    end
    product
  end


#Intended output: 
p factorial(5) 
#OUTPUT 120