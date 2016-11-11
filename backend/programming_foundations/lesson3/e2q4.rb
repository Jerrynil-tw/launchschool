munsters_description = "The Munsters are creepy in a good way."

#"The munsters are creepy in a good way."
# solution 1
munsters_description.gsub!("Munsters", "munsters")
p munsters_description

# solution 2
munsters_description.capitalize!
p munsters_description


#"tHE mUNSTERS ARE CREEPY IN A GOOD WAY."
munsters_description.swapcase!
p munsters_description

#"the munsters are creepy in a good way."
munsters_description.downcase!
p munsters_description

#"THE MUNSTERS ARE CREEPY IN A GOOD WAY."
munsters_description.upcase!
p munsters_description