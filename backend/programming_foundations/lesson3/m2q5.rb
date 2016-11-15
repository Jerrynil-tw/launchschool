answer = 42
p answer.object_id

def mess_with_it(some_number)
some_number += 8
end

new_answer = mess_with_it(answer)

p answer -= 8 #34

p answer.object_id