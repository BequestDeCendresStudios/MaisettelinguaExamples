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
  when 0.500..0.749; print "High Risk";    puts quantiffirm(": Such activities carry Maximum Risk", "this activity probably has High risk",    risk)
  when 0.250..0.499; print "Medium Risk";  puts quantiffirm(": Such activities carry Maximum Risk", "this activity probably has Medium risk",  risk)
  when 0.125..0.249; print "Mild Risk";    puts quantiffirm(": Such activities carry Maximum Risk", "this activity probably has Mild risk",    risk)
  when 0.010..0.124; print "Minimal Risk"; puts quantiffirm(": Such activities carry Maximum Risk", "this activity probably has Minimal risk", risk)
  else
    puts "The risk factor is unquantifiable."
  end
end

def thresholding(a, y, x)
  cognitive_threshold = 100
  probability         = a
  
  #puts probability
  
  odds                = probability / ( 1.0 - probability )
  charted_assessment  = cognitive_threshold * probability
    
  size_of_map_y = y
  size_of_map_x = x
    
  map_cognitive_y = ( size_of_map_y * charted_assessment ) % size_of_map_y
  map_cognitive_x = ( size_of_map_x * charted_assessment ) % size_of_map_x
  
  puts "LEARNING ASSESSMENT"
  puts "The current map size is: #{x} by #{y}"
  puts "The current cognitive threshold is #{cognitive_threshold}"
  puts "The current probability is #{probability}"
  puts "The current odds of this gameplay feature straining the player is #{odds}"
  puts "The current assessment of learning ability is #{charted_assessment}"
  puts "Therefore the approximate location of cognitive loading is the tile of #{map_cognitive_y.to_i} and #{map_cognitive_x.to_i}."
  puts quantiffirm("The cognitive threshold is #{cognitive_threshold}", "the approximate location of cognitive loading is the tile of #{map_cognitive_y} and #{map_cognitive_x}", probability)  
  puts " "
end

gameplay = [
  [ :lure, "is primarily used to lear enemies to your general direction.", 0.09487368 ],
  [ :trap,  "temporarily disables enemy long enough for you to run away.", 0.02371842 ],
  [ :stun,                 "is used in order to lock enemies into place.", 0.43560000 ],
]

weapons = [
  [ :mechanical_hammer, "can be used to bludgeon enemies and can be found randomly in the mansion.", 0.01185921 ],
  [ :lunar_calenders,           "the phases of the moon adjusts your presence hp and attack power.", 0.09487368 ],
]

information = [
  [ :what, "is the thing the person of interest possesses.", 0.04743684 ],
  [ :who,                  "the person being investigated.", 0.10890000 ],
]

monsters = [
  [ :acid_dragons,          "dragons that have evolved to live in an acidic environment in the ocean.", 0.144016243 ],
  [ :sea_gargoyals,   "are grotesque creatures as statues in the day, and come alive to hunt sailors.", 0.023718420 ],
  [ :acid_serpents,                            "giant snakes that spew acid to destroy their enemies.", 0.010331744 ],
  [ :traitorous_nuns, "are religious figures from the enemy encampment that ally with the main party.", 0.821933593 ],
]

luring   = gameplay[0][0], gameplay[0][1], gameplay[0][2]
trapping = gameplay[1][0], gameplay[1][1], gameplay[1][2]
stunning = gameplay[2][0], gameplay[2][1], gameplay[2][2]

print "Luring: "
puts "#{risk_factor(luring[2])}"
puts "#{thresholding(luring[2], 640, 480)}"

print "Trapping: "
puts "#{risk_factor(trapping[2])}"
puts "#{thresholding(trapping[2], 640, 480)}"

print "Stunning: "
puts "#{risk_factor(stunning[2])}"
puts "#{thresholding(stunning[2], 640, 480)}"

mechanical_hammer = weapons[0][0], weapons[0][1], weapons[0][2]
lunar_calenders   = weapons[1][0], weapons[1][1], weapons[1][2]

print "Mechanical Hammer: "
puts "#{risk_factor(mechanical_hammer[2])}"
puts "#{thresholding(mechanical_hammer[2], 640, 480)}"

print "Lunar Calender: "
puts "#{risk_factor(lunar_calenders[2])}"
puts "#{thresholding(lunar_calenders[2], 640, 480)}"

who  = information[0][0], information[0][1], information[0][2]
what = information[1][0], information[1][1], information[1][2]

print "Finding out Who: "
puts "#{risk_factor(who[2])}"
puts "#{thresholding(who[2], 640, 480)}"

print "Finding out What: "
puts "#{risk_factor(what[2])}"
puts "#{thresholding(what[2], 640, 480)}"

acid_dragons    = monsters[0][0], monsters[0][1], monsters[0][2]
sea_gargoyals   = monsters[1][0], monsters[1][1], monsters[1][2]
acid_serpents   = monsters[2][0], monsters[2][1], monsters[2][2]
traitorous_nuns = monsters[3][0], monsters[3][1], monsters[3][2]

print "Acid Dragons: "
puts "#{risk_factor(acid_dragons[2])}"
puts "#{thresholding(acid_dragons[2], 640, 480)}"

print "Sea Gargoyals: "
puts "#{risk_factor(sea_gargoyals[2])}"
puts "#{thresholding(sea_gargoyals[2], 640, 480)}"

print "Acid Serpents: "
puts "#{risk_factor(acid_serpents[2])}"
puts "#{thresholding(acid_serpents[2], 640, 480)}"

print "Traitorous Nuns: "
puts "#{risk_factor(traitorous_nuns[2])}"
puts "#{thresholding(traitorous_nuns[2], 640, 480)}"
