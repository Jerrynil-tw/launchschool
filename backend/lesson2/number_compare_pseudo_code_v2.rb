START
#Given a collection of integers called numbers

SET iterator = 1
# Iterate through the collection one by one


SET saved_number = value within numbers collection in space 1
#   -save the first value as the starting value

WHILE iterator < length of numbers
  SET current_number = value within numbers collection in space "iterator"
  IF saved_number >= current_number
#   -for each iteration, compare each value with the saved value
#   -if the saved value is greater, or it's the same
    saved_number = saved_number + 1
#     -move to the next value in the collection
  ELSE saved_number < current_number
#   -else the current value is greater
    saved_number = current_number
#     -reassign the current value to the saved value
  END
#   -end
  PRINT saved_number
# After iterating through the collection, return the saved value
