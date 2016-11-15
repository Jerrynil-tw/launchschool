def foo(param = "no")
  "yes"
end

def bar(param = "no")
  param == "no" ? "yes" : "no"
end

p foo
# return "yes"
p bar(foo)
# return "no"