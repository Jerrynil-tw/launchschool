# solution 1
def generate_uuid
  key_base = []
  key_base += ("0".."9").to_a + ("a".."f").to_a  
  sections = [8, 4, 4, 4, 12]

  uuid = ""
  sections.each_with_index do |section, index|
    section.times do
      uuid << key_base.sample
    end  
    uuid += "-" unless index >= sections.size - 1
  end
  p uuid
end

  generate_uuid

# solution 2
def generate_uuid
  key_base = []
  (0..9).each {|key| key_base << key.to_s}
  ("a".."f").each {|key| key_base << key}

  sections = [8, 4, 4, 4, 12]
  uuid = ""  
  
  sections.each_with_index do |section, index|
    section.times { uuid << key_base.sample }
    uuid << "-" unless index >= sections.size - 1
  end
  p uuid
end
  generate_uuid
  

