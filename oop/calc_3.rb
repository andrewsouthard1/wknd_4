# In this example, we have THREE calculators, the two included in the previous
# exercises as well as Whiz Bang Calculator that can even calculate the hypotenuse
# of a triangle if given the length of the other two sides. Figure out how to 
# DRY up all the code below - there shouldn't be a single method duplicated between
# any two classes.

class SimpleCalculator
  def add(first_number, second_number)
    first_number + second_number
  end

  def subtract(first_number, second_number)
    first_number - second_number
  end

  def multiply(first_number, second_number)
    first_number * second_number
  end

  def divide(first_number, second_number)
    first_number / second_number
  end
end

class FancyCalculator < SimpleCalculator
  def square_root(number)
    Math.sqrt(number)
  end
end

class WhizBangCalculator < FancyCalculator
  def hypotenuse(first_number, second_number)
    Math.hypot(first_number, second_number)
  end
  
  def exponent(first_number, exponent_number)
    total = 1
    exponent_number.times { total = multiply(total, first_number) }
    total
  end
end

# Copy your driver code from the previous exercise and more below:
simple = SimpleCalculator.new
fancy = FancyCalculator.new
whiz = WhizBangCalculator.new

p "Fancy can add 3 and 4: #{fancy.add(3, 4)}"
p "Fancy can subract 10 and 4: #{fancy.subtract(10, 4)}"
p "Fancy can multiply 3 and 4: #{fancy.multiply(3, 4)}"
p "Fancy can divide 10 and 2: #{fancy.divide(10, 2)}"

p "Whiz can square root 16: #{whiz.square_root(16)}"
