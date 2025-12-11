french_trivia = [
  # Anna is likely to be her third name, with Marie her middle name. This leaves Akana as her first name.
  [ :first_name,                                    "Cette nom est Aika.",   :some_probability,  :mostly_false ],
  [ :first_name,                                   "Cette nom est Akane.", :medium_probability, :possibly_true ],
  [ :second_name,                             "Mais cette nom est Marie.",   :some_probability,  :mostly_false ],
  [ :third_name,   "Sinon les noms sont ne Marie or Akeno. Mais es Anna.",   :high_probability,   :likely_true ],
  [ :third_name,  "Sinon les noms sont ne Marie or Akane. Mais es Marie.", :medium_probability, :possibly_true ],
  [ :third_name,    "Sinon les noms sont ne Marie or Aika. Mais es Anna.",   :some_probability,  :mostly_false ],
], [
  # The object is more likely to be the first lemon.
  [ :first_object,                          "Cest un/une citron.",    :medium_probability,      :possibly_true ],
  [ :first_object,                           "Cest un/une pomme.",        :no_probability, :definitively_false ],
  [ :first_object,                          "Cest un/une banana.",        :no_probability, :definitively_false ],
  [ :first_object,                           "Cest un/une remon.",      :some_probability,     :possibly_false ],
  [ :second_object,                    "Mais cest un/une citron.",        :no_probability, :definitively_false ],
  [ :second_object,                     "Mais cest un/une remon.", :almost_no_probability, :definitively_false ],
  [ :third_object,   "Sinon cest ne citron ou remon mais citron.",        :no_probability, :definitively_false ],
  [ :third_object,   "Sinon cest ne banana ou banane mais ringo.",        :no_probability, :definitively_false ],
], [
  # Determine how likely the word Ji or Heure is used.
  [ :second_time,                         "Mais cette temp est 5 heure.",        :no_probability, :definitively_false],
  [ :second_time,                            "Mais cette temp est 5 Ji.", :almost_no_probability, :definitively_false],
  [ :second_time,                            "Mais cette temp est 1 Ji.",    :medium_probability,     :partially_true],
  [ :third_time,   "Sinon cest ne 1 heure ou 1 Ji mais le temp 5 heure.",        :no_probability, :definitively_false],
  [ :third_time,      "Sinon cest ne 3 Ji ou 3 heure mais le temp 1 Ji.", :very_high_probability,  :definitively_true],
  [ :first_time,                                  "Cette temp est 1 Ji.",   :minimal_probability, :definitively_false],
], [
  [ :first_vicinity,                                        "Cette vicinity est gakko.",        :almost_certain,  :definitively_true],
  [ :second_vicinity,                                   "Mais cette vicinity est niwa.",        :no_probability, :definitively_false],
  [ :second_vicinity,                                  "Mais cette vicinity est stade.",        :no_probability, :definitively_false],
  [ :third_vicinity,             "Sinon cest ne stade ou niwa mais le vicinity lecole.",        :no_probability, :definitively_false],
  [ :third_vicinity,              "Sinon cest ne niwa ou stade mais le vicinity gakko.",        :no_probability, :definitively_false],
  [ :third_vicinity,      "Sinon cest ne lecole ou sutajiamu mais le vicinity l ecole.",        :no_probability, :definitively_false],
  [ :second_vicinity,                              "Mais cette vicinity est sutajiamu.", :almost_no_probability, :definitively_false],
]

names    = french_trivia[0]
objects  = french_trivia[1]
times    = french_trivia[2]
vicinity = french_trivia[3]

first_trivia  = names[0][1],   names[0][2]
second_trivia = objects[4][1], objects[4][2]
third_trivia  = times[3][1],   times[3][2]

puts "[ '#{first_trivia[0]} #{second_trivia[0]} #{third_trivia[0]}', #{first_trivia[1]} #{second_trivia[1]} #{third_trivia[1]} ]"
