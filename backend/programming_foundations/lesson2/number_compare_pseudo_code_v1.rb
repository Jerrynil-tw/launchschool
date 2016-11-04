Given a collection of integers 

Iterate through the collection one by one
  -save the first value as the starting value
  -for each iteration, compare each value with the saved value
  -if the saved value is greater, or it's the same
    -move to the next value in the collection
  -else the current value is greater
    -reassign the current value to the saved value
  -end

After iterating through the collection, return the saved value
