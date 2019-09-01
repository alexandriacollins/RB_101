# a method that returns the sum of two integers
START

# Given 2 integers to pass through method (num1, num2)

SET result = num1 + num2
PRINT result 
END


# a method that takes an array of strings, and returns 
# a string that is all those strings concatenated together
START

# Given an array of strings, [strings]

SET iterator = 1
SET cocatenated_string = empty_string

WHILE iterator <= size of array
  SET cocatenated_string = concatenated_string + string in that space in strings 
  SET iterator = iterator + 1

PRINT result 
END


# a method that takes an array of integers, and 
# returns a new array with every other element
START 

 # given an array of integers, [integers]

SET iterator = 1
SET new_array = []

WHILE iterator <= size of array
  IF iterator is even
    iterator = iterator + 1
  ELSE
    new_array pops integers array[iterator-1]
    iterator = iterator + 1
  
END
