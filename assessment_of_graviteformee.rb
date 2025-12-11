vocabulary = [
  [ :second_word, "Le Sabo es uni avec fensu: Sabofensu.", 0.170772624 ],
  [ :third_word,  "Le Sabo es uni avec rakku: Saborakku.", 0.202500000 ],
], [
  [ :first_word, "Le Yume es uni avec moire: Yumemoire.", 0.43560000000000004 ],
  [ :third_word, "Le Surf es uni avec suna: Surfsuna.",   0.51652892561983470 ],
]

learning_assessment = [
  [ "The current map size is: 320 by 240",
    "The current cognitive threshold is 100",
    "The current probability is 1.0330578512396693",
    "The current odds of learning this word is -31.2500000000001",
    "The current assessment of learning ability is 103.30578512396693",
    "Therefore the approximate location of cognitive loading is the tile of 97.85123966941319 and 73.38842975206353.",
    "The cognitive threshold is 100 therefore the approximate location of cognitive loading is the tile of 97.85123966941319 and 73.38842975206353 is not quantifiable." ],
    
  [ "The current map size is: 320 by 240",
    "The current cognitive threshold is 100",
    "The current probability is 0.5165289256198347",
    "The current odds of learning this word is 1.0683760683760681",
    "The current assessment of learning ability is 51.652892561983464",
    "Therefore the approximate location of cognitive loading is the tile of 208.9256198347066 and 156.69421487603177.",
    "The cognitive threshold is 100 therefore the approximate location of cognitive loading is the tile of 208.9256198347066 and 156.69421487603177 is largely true." ],
], [
  [ "The current map size is: 320 by 240",
    "The current cognitive threshold is 100",
    "The current probability is 0.573921028466483",
    "The current odds of learning this word is 1.3469827586206893",
    "The current assessment of learning ability is 57.3921028466483",
    "Therefore the approximate location of cognitive loading is the tile of 125.47291092745581 and 94.10468319559186.",
    "The cognitive threshold is 100 therefore the approximate location of cognitive loading is the tile of 125.47291092745581 and 94.10468319559186 is largely true." ],

  [ "The current map size is: 320 by 240",
    "The current cognitive threshold is 100",
    "The current probability is 0.573921028466483",
    "The current odds of learning this word is 1.3469827586206893",
    "The current assessment of learning ability is 57.3921028466483",
    "Therefore the approximate location of cognitive loading is the tile of 125.47291092745581 and 94.10468319559186.",
    "The cognitive threshold is 100 therefore the approximate location of cognitive loading is the tile of 125.47291092745581 and 94.10468319559186 is largely true." ],
]

second_word = vocabulary[0][0], vocabulary[0][1], vocabulary[0][2]
third_word  = vocabulary[1][0], vocabulary[1][1], vocabulary[1][2]

# Unit 1
map_size_unit1             = learning_assessment[0][0][0]
cognitive_threshold_unit1  = learning_assessment[0][0][1]
probability_unit1          = learning_assessment[0][0][2]
odds_unit1                 = learning_assessment[0][0][3]
grade_unit1                = learning_assessment[0][0][4]
approximate_location_unit1 = learning_assessment[0][0][5]
inference_unit1            = learning_assessment[0][0][6]

puts map_size_unit1
puts cognitive_threshold_unit1
puts probability_unit1
puts odds_unit1
puts approximate_location_unit1
puts inference_unit1

# Unit 2
map_size_unit2             = learning_assessment[0][1][0]
cognitive_threshold_unit2  = learning_assessment[0][1][1]
probability_unit2          = learning_assessment[0][1][2]
odds_unit2                 = learning_assessment[0][1][3]
grade_unit2                = learning_assessment[0][1][4]
approximate_location_unit2 = learning_assessment[0][1][5]
inference_unit2            = learning_assessment[0][1][6]

puts map_size_unit2
puts cognitive_threshold_unit2
puts probability_unit2
puts odds_unit2
puts approximate_location_unit2
puts inference_unit2
