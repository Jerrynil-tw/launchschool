sentence = "Humpty Dumpty sat on a wall."

reversed_sentence = sentence.split(/\W/).reverse.join(" ") + "." 

p reversed_sentence