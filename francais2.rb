statement_index = [
  [ :statement_one,     "Cette granit violet Je jute lentement, mais cette granit violet Je ne mange quicely.", 0.51652892561983470 ],
  [ :statement_one,      "Cette pomme rouge Je mange lentement, mais cette banane jaune Je ne jute lentement.", 0.51652892561983470 ],
  [ :statement_one,     "Cette pomme rouge Je ne mange lentement, mais cette pomme violet Je ne jute quicely.", 0.43560000000000004 ],
  [ :statement_one,     "Cette granit violet Je ne jute lentement, mais cette pomme rouge Je ne jute quicely.", 0.87120000000000010 ],
  [ :statement_one,    "Cette banane rouge Je jute lentement, mais cette la pomme violet Je ne mange quicely.", 0.87120000000000010 ],
  [ :statement_one,      "Cette granit rouge Je ne jute lentement, mais cette pomme jaune Je mange lentement.", 0.87120000000000010 ],
  [ :statement_one,       "Cette pomme rouge Je ne mange quicely, mais cette banane violet Je jute lentement.", 0.51652892561983470 ],
  [ :statement_one,          "Cette pomme rouge Je mange quicely, mais cette la pomme violet Je jute quicely.", 0.87120000000000010 ],
  [ :statement_one,     "Cette banane jaune Je ne jute lentement, mais cette granit rouge Je mange lentement.", 0.51652892561983470 ],
  [ :statement_one,  "Cette granit violet Je ne jute lentement, mais cette banane violet Je ne mange quicely.", 0.51652892561983470 ],
  [ :statement_one,         "Cette granit rouge Je jute quicely, mais cette la banane violet Je jute quicely.", 0.87120000000000010 ],
  [ :statement_one,     "Cette banane jaune Je ne jute lentement, mais cette granit rouge Je ne jute quicely.", 0.21780000000000002 ],
  [ :statement_one,      "Cette pomme rouge Je ne mange quicely, mais cette pomme rouge Je ne jute lentement.", 0.87120000000000010 ],
  [ :statement_one,     "Cette banane violet Je mange lentement, mais cette banane rouge Je ne mange quicely.", 0.51652892561983470 ],
  [ :statement_one,   "Cette banane violet Je jute lentement, mais cette le granit jaune Je ne mange quicely.", 0.87120000000000010 ],
], [
  [ :statement_two,    "Cette granit jaune Je ne jute quicely, mais cette le granit jaune Je ne mange lentement.", 0.87120000000000010 ],
  [ :statement_two,            "Cette banane violet Je jute quicely, mais cette pomme violet Je ne jute quicely.", 0.87120000000000010 ],
  [ :statement_two,             "Cette banane jaune Je mange lentement, mais cette pomme jaune Je mange quicely.", 0.87120000000000010 ],
  [ :statement_two,           "Cette banane violet Je mange lentement, mais cette pomme violet Je mange quicely.", 0.43560000000000004 ],
  [ :statement_two, "Cette banane rouge Je ne mange lentement, mais cette le granit jaune Je ne mange lentement.", 0.51652892561983470 ],
  [ :statement_two,        "Cette pomme violet Je ne mange quicely, mais cette pomme jaune Je ne jute lentement.", 0.51652892561983470 ],
  [ :statement_two,      "Cette granit violet Je ne mange lentement, mais cette le granit rouge Je jute quicely.", 0.87120000000000010 ],
  [ :statement_two,                "Cette banane rouge Je jute quicely, mais cette granit jaune Je jute quicely.", 0.43560000000000004 ],
  [ :statement_two,            "Cette pomme jaune Je mange quicely, mais cette pomme violet Je ne mange quicely.", 0.43560000000000004 ],
  [ :statement_two,              "Cette pomme jaune Je jute quicely, mais cette pomme violet Je mange lentement.", 0.43560000000000004 ],
], [
  [ :statement_tre,     "Cette granit rouge Je mange lentement, mais cette la banane rouge Je jute lentement.", 0.45000000000000000 ],
  [ :statement_tre, "Cette granit rouge Je ne mange lentement, mais cette banane jaune Je ne mange lentement.", 0.87120000000000010 ],
  [ :statement_tre,       "Cette granit rouge Je jute lentement, mais cette granit jaune Je ne mange quicely.", 0.87120000000000010 ],
  [ :statement_tre,         "Cette banane jaune Je mange lentement, mais cette pomme rouge Je jute lentement.", 0.87120000000000010 ],
  [ :statement_tre,    "Cette granit rouge Je jute quicely, mais cette la banane rouge Je ne mange lentement.", 0.51652892561983470 ],
  [ :statement_tre,          "Cette banane violet Je jute quicely, mais cette granit jaune Je jute lentement.", 0.87120000000000010 ],
  [ :statement_tre,     "Cette granit violet Je jute quicely, mais cette banane violet Je ne mange lentement.", 0.87120000000000010 ],
  [ :statement_tre,       "Cette banane jaune Je jute lentement, mais cette granit violet Je ne jute quicely.", 0.43560000000000004 ],
  [ :statement_two,  "Cette pomme jaune Je ne mange lentement, mais cette le granit violet Je jute lentement.", 0.87120000000000010 ],
  [ :statement_tre,   "Cette banane jaune Je ne jute quicely, mais cette la pomme violet Je ne mange quicely.", 0.51652892561983470 ],
  [ :statement_tre, "Cette banane violet Je ne jute quicely, mais cette la banane jaune Je ne jute lentement.", 0.87120000000000010 ],
  [ :statement_tre,    "Cette pomme violet Je ne jute lentement, mais cette granit violet Je mange lentement.", 0.87120000000000010 ],
  [ :statement_tre,         "Cette pomme rouge Je ne jute quicely, mais cette pomme rouge Je ne jute quicely.", 0.21780000000000002 ],
]

statement_one = statement_index[0].shuffle
statement_two = statement_index[1].shuffle
statement_tre = statement_index[2].shuffle

index = 0

9.times do
  ## First Index
  first_statement = statement_one[index][0], statement_one[index][1], statement_one[index][2]

  ## Second Index
  second_statement = statement_two[index][0], statement_two[index][1], statement_two[index][2]

  ## Third Index
  third_statement = statement_tre[index][0], statement_tre[index][1], statement_tre[index][2]
  
  total_probability = first_statement[2] * second_statement[2] * third_statement[2]
  odds              = total_probability / ( 1 - total_probability )
  
  puts "[ '#{first_statement[1]} #{second_statement[1]} #{third_statement[1]}', #{ total_probability } ],"
  
  index = index + 1
end
