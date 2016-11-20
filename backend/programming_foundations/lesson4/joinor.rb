# joinor([1, 2])                   # => "1 or 2"
# joinor([1, 2, 3])                # => "1, 2, or 3"
# joinor([1, 2, 3], '; ')          # => "1; 2; or 3"
# joinor([1, 2, 3], ', ', 'and')   # => "1, 2, and 3"

def joinor(arr, divider = ', ', connector = 'or')
  case arr.size 
  when 0 then ""
  when 1 then "#{arr.first}"
  when 2 then arr.join(" #{connector} ")
  else
    arr[-1] = "#{connector} #{arr.last}"
    arr.join(divider)
  end
end

p joinor([])
p joinor([1])
p joinor([1, 2])                  
p joinor([1, 2, 3])                
p joinor([1, 2, 3], '; ')         
p joinor([1, 2, 3], ', ', 'and')  

