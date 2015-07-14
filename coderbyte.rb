# Using the Ruby language, have the function FirstReverse(str) take the str parameter being passed and return the string in reversed order.

def FirstReverse(str)
  reversed = ""
  str.split("").each { |letter| reversed = letter + reversed }

  reversed
end

# Using the Ruby language, have the function FirstFactorial(num) take the num parameter being passed and return the factorial of it (ie. if num = 4, return (4 * 3 * 2 * 1)). For the test cases, the range will be between 1 and 18.

def FirstFactorial(num)
  total = 1

  num.times do |i|
    total *= (i + 1)
  end

  total
end
