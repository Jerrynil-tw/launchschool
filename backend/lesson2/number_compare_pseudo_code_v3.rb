def find_greatest(numbers)
  saved_number = numbers.first

  numbers.each do |num|
    if saved_number >= num
      next
    else
      saved_number = num
    end
  end

  saved_number

end

find_greatest(numbers = [1, 2, 3, 4])

