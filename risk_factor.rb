def quantiffirm(p, q, probability)
  case probability
  when 0.00010..0.1250
    "#{p} therefore #{q} is false."
  when 0.1251..0.3625
    "#{p} therefore #{q} is largely false."
  when 0.3626..0.5125
    "#{p} therefore #{q} is partially true."
  when 0.5126..0.7563
    "#{p} therefore #{q} is largely true."
  when 0.7564..0.9999
    "#{p} therefore #{q} is true."
  else
    "#{p} therefore #{q} is not quantifiable."
  end
end

def risk_factor(risk)
  case risk
  when 0.750..1.000; print "Maximum Risk"; puts quantiffirm(": Such activities carry Maximum Risk", "this activity probably has Maximum risk", risk)
  when 0.500..0.749; print "High Risk";    puts quantiffirm(": Such activities carry High Risk", "this activity probably has High risk",    risk)
  when 0.250..0.499; print "Medium Risk";  puts quantiffirm(": Such activities carry Medium Risk", "this activity probably has Medium risk",  risk)
  when 0.125..0.249; print "Mild Risk";    puts quantiffirm(": Such activities carry Mild Risk", "this activity probably has Mild risk",    risk)
  when 0.010..0.124; print "Minimal Risk"; puts quantiffirm(": Such activities carry Minimal Risk", "this activity probably has Minimal risk", risk)
  else
    puts "The risk factor is unquantifiable."
  end
end

def thresholding(a, y, x)
  cognitive_threshold = 100
  probability         = a
  odds                = probability / ( 1 - probability )
  charted_assessment  = cognitive_threshold * probability
    
  size_of_map_y = y
  size_of_map_x = x
    
  map_cognitive_y = ( size_of_map_y * charted_assessment ) % size_of_map_y
  map_cognitive_x = ( size_of_map_x * charted_assessment ) % size_of_map_x
  
  puts "LEARNING ASSESSMENT"
  puts "The current map size is: #{x} by #{y}"
  puts "The current cognitive threshold is #{cognitive_threshold}"
  #puts "The current probability is #{probability}"
  puts "The current odds of learning this word is #{odds}"
  #puts "The current assessment of learning ability is #{charted_assessment}"
  puts "Therefore the approximate location of cognitive loading is the tile of #{map_cognitive_y.to_i} and #{map_cognitive_x.to_i}."
  puts quantiffirm("The cognitive threshold is #{cognitive_threshold}", "the approximate location of cognitive loading is the tile of #{map_cognitive_y} and #{map_cognitive_x}", probability)  
  puts " "
end

risk_factors = [
  [ :bed_and_breakfast, "Dad traveled 150 miles to eat and sleep at Uncles.", 0.094873680 ],
  [ :food_cooked,                      "Sukiyaki is boiled on the stovetop.", 0.036004061 ],
  [ :device_acquired,                "I want Router from Samsung to Uncles.", 0.000853959 ],
]

bed_and_breakfast = [ risk_factors[0][0], risk_factors[0][1], risk_factors[0][2] ]
food_cooked       = [ risk_factors[1][0], risk_factors[1][1], risk_factors[1][2] ]
device_acquired   = [ risk_factors[2][0], risk_factors[2][1], risk_factors[2][2] ]

puts "BED AND BREAKFAST"
puts risk_factor(bed_and_breakfast[2])
puts thresholding(bed_and_breakfast[2], 640, 480)

puts "FOOD SERVED"
puts risk_factor(food_cooked[2])
puts thresholding(food_cooked[2], 640, 480)

puts "DEVICE ACQUIRED"
puts risk_factor(device_acquired[2])
puts thresholding(device_acquired[2], 640, 480)
