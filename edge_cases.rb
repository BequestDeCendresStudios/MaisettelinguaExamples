def get_edge_cases(a1, a2, b1, b2, c1, c2, d1, d2, e1, e2, f1, f2)
  a = a1, a2 
  b = b1, b2
  c = c1, c2
  d = d1, d2
  e = e1, e2
  f = f1, f2

  edges_cases = [
    [ a[0], e[0], b[0], d[0], f[0], c[0] ],
    [ e[0], b[0], d[0], f[0], c[0], a[0] ],
    [ b[0], d[0], f[0], c[0], a[0], e[0] ],
    [ d[0], f[0], c[0], a[0], e[0], b[0] ],
    [ f[0], c[0], a[0], b[0], d[0], e[0] ],
    [ c[0], a[0], e[0], b[0], d[0], f[0] ],
  ], [
    [ a[1], e[1], b[1], d[1], f[1], c[1] ],
    [ e[1], b[1], d[1], f[1], c[1], a[1] ],
    [ b[1], d[1], f[1], c[1], a[1], e[1] ],
    [ d[1], f[1], c[1], a[1], e[1], b[1] ],
    [ f[1], c[1], a[1], b[1], d[1], e[1] ],
    [ c[1], a[1], e[1], b[1], d[1], f[1] ],
  ]
  
  symbols      = edges_cases[0]
  descriptions = edges_cases[1]

  row_options = [0, 1, 2, 3, 4, 5]
  col_options = [0, 1, 2, 3, 4, 5]
  
  cur_row = row_options.sample
  cur_col = col_options.sample
  
  first_symbol      = symbols[cur_row][cur_col] #[cur_arr]
  first_description = descriptions[cur_row][cur_col] #[cur_arr]

  cur_row = row_options.sample
  cur_col = col_options.sample
  #cur_arr = arr_options.sample
  
  second_symbol      = symbols[cur_row][cur_col] #[cur_arr]
  second_description = descriptions[cur_row][cur_col] #[cur_arr]

  cur_row = row_options.sample
  cur_col = col_options.sample
  #cur_arr = arr_options.sample
  
  third_symbol      = symbols[cur_row][cur_col] #[cur_arr]
  third_description = descriptions[cur_row][cur_col] #[cur_arr]
  
  2.times do
    get_statistics(first_symbol,  first_description,
                   second_symbol, second_description,
                   third_symbol,  third_description)
                   
                   dynamic_reward_allocation
  end
end

puts "Anamolous Monsters"
get_edge_cases(:acid_dragons,   "are dragons that have evolved to live in an acidic environment in the ocean.",
               :sea_gargoyals,  "are grotesque creatures as statues in the day, and come alive to hunt sailors.",
               :acid_serpents,  "are giant snakes that spew acid to destroy their enemies.",
               :poison_moss,    "is a toxic plant-like entity that needs special clogs in order to walk over.",
               :treasonous_nun, "are religious figures from the enemy encampment that ally with the main party.",
               :cthulhu,        "is first elder god of the Cthulhu mythos that destroys mankind when awakened.")
               
puts "\nAnamolous Traps"
get_edge_cases(:poison_moss,     "is grass like moss that poisons the player when you walk on it.",
               :spiked_raft,     "is a spiked wooden raft that tricks a vaulting player into landing on it.",
               :poison_mine,     "is a poison spraying mine that requires an antidote to treat.",
               :pressure_plate,  "is a pressure plate that beheads the character as they pass through it.",
               :guillotine,      "is an official execution device for deserters and defectors.",
               :one_way_dungeon, "is a cavern you can fall in but not easily escape.")

puts "\nAnamolous Loot"
get_edge_cases(:le_sabot_de_poison_hafelin, "Special wooden shoes for resisting poison caused by poison moss.",
               :les_axes_de_urgence,        "Emergency axes for chopping down wooden doors and attacking enemies.",
               :anos_kaidokuzaios,          "Antidotes for clearing out poison from the body.",
               :healing_salves,             "Healing salves for cuts and bruises; first aid kit box.",
               :caffein,                    "Caffein pills for keeping yourself awake at specific hours.",
               :alcohol,                    "Vampire Wine for extremely special occassions.")
