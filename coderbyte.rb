# Using the Ruby language, have the function FirstReverse(str) take the str parameter being passed and return the string in reversed order.

def FirstReverse(str)
  reversed = ""
  str.split("").each { |letter| reversed = letter + reversed }

  reversed
end
