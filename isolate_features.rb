# Elevators for retrieving traveling up a location and back down in one motion.
def deux_chemix_ascenseur(a, b, c)
  "an elevator that takes #{a}, from #{b} to #{c} and back to #{b}."
end

## A two way "elevator" that trades files rather than gets rid of them.
def deux_chemix_cinepark(a, b, c, d, e, f)
  new_file1 = a
  new_file2 = b
  
  old_directory1 = c
  old_directory2 = d
  
  new_directory1 = e
  new_directory2 = f
  
  wabisab(a, c, d)
  wabisab(b, e, f)
end

def is_house_deceptive?(a, b)
  "That house #{a}, is really a construct of #{b}."
end

def show_decption(a, b, c)
  deceptive_houses = [
    [[a, a, a],
     [a, a, b],
     [a, a, c]],

    [[b, b, a],
     [b, b, b],
     [b, b, c]],
   
    [[c, c, a],
     [c, c, b],
     [c, c, c]],
  ]

  #probability_of_endpoint = 0.33 * 0.33 * 0.33

  row_options = [0, 1, 2]
  col_options = [0, 1, 2]
  arr_options = [0, 1, 2]
  
  cur_row = row_options.sample
  cur_col = col_options.sample
  cur_arr = arr_options.sample
  
  d = deceptive_houses[cur_row][cur_col][cur_arr]

  row_options = [0, 1, 2]
  col_options = [0, 1, 2]
  arr_options = [0, 1, 2]
  
  cur_row = row_options.sample
  cur_col = col_options.sample
  cur_arr = arr_options.sample
  
  e = deceptive_houses[cur_row][cur_col][cur_arr]
  
  row_options = [0, 1, 2]
  col_options = [0, 1, 2]
  arr_options = [0, 1, 2]
  
  cur_row = row_options.sample
  cur_col = col_options.sample
  cur_arr = arr_options.sample
  
  f = deceptive_houses[cur_row][cur_col][cur_arr]

  2.times do
    get_statistics(:first_deception,  d,
                   :second_deception, e,
                   :third_deception,  f)
                   
                   dynamic_reward_allocation
  end
end

def isolate_feature(a, b, c, d, e, f, g, h, i, j, k, l)
  
  suspicious_houses = RevisedBayes.new(:no_doors,     :one_door,   :two_doors,   :three_doors,   :four_doors),
                      RevisedBayes.new(:no_windows, :one_window, :two_windows, :three_windows, :four_windows),           
                      RevisedBayes.new(:no_garages,  :one_garage, :two_garages, :three_garages, :four_garages),
                      RevisedBayes.new(:no_gardens,  :one_garden, :two_gardens, :three_gardens, :four_gardens)
                      
  # Isolated Feature Sets
  door_types   = suspicious_houses[0]
  window_types = suspicious_houses[1]
  garage_types = suspicious_houses[2]
  garden_types = suspicious_houses[3]
  
  # Doors
  door_types.train(:no_doors,       "There are no doors on this building.", "no doors")
  door_types.train(:one_door,       "There are one door on this building.", "one door")
  door_types.train(:two_doors,     "There are two doors on this building.", "two doors")
  door_types.train(:three_doors, "There are three doors on this building.", "three doors")
  door_types.train(:four_doors,     "There are no doors on this building.", "four doors")
  
  # Windows
  window_types.train(:no_windows,       "There are no windows on this building.",    "one window")
  window_types.train(:one_window,       "There are one window on this building.",   "two windows")
  window_types.train(:two_windows,     "There are two windows on this building.", "three windows")
  window_types.train(:three_windows, "There are three windows on this building.",  "four windows")
  window_types.train(:four_windows,     "There are no windows on this building.",  "five windows")
  
  # Garage
  garage_types.train(:no_garages,       "There are no garages on this building.",    "no garages")
  garage_types.train(:one_garage,       "There are one garage on this building.",    "one garage")
  garage_types.train(:two_garages,     "There are two garages on this building.",   "two garages")
  garage_types.train(:three_garages, "There are three garages on this building.", "three garages")
  garage_types.train(:four_garages,     "There are no garages on this building.",  "four garages")
  
  # Garden
  garden_types.train(:no_gardens,       "There are no gardens on this building.",    "no gardens")
  garden_types.train(:one_garden,      "There are one garden on this building.",     "one garden")
  garden_types.train(:two_gardens,     "There are two gardens on this building.",   "two gardens")
  garden_types.train(:three_gardens, "There are three gardens on this building.", "three gardens")
  garden_types.train(:four_gardens,     "There are no gardens on this building.",  "four gardens")
  
  ## Classification of features
  d = is_house_deceptive?(a, deux_chemix_ascenseur(b, c, d))
  e = is_house_deceptive?(e, deux_chemix_ascenseur(f, g, h))
  f = is_house_deceptive?(i, deux_chemix_ascenseur(j, k, l))
  
  d_door_class   = door_types.classify(d)
  d_window_class = window_types.classify(d)
  d_garage_class = garage_types.classify(d)
  d_garden_class = door_types.classify(d)
  
  e_door_class   = door_types.classify(e)
  e_window_class = window_types.classify(e)
  e_garage_class = garage_types.classify(e)
  e_garden_class = door_types.classify(e)
  
  f_door_class   = door_types.classify(f)
  f_window_class = window_types.classify(f)
  f_garage_class = garage_types.classify(f)
  f_garden_class = door_types.classify(f)
  
  print "#{d_door_class} #{d_window_class} #{d_garage_class} #{d_garden_class}"; puts " "
  print "#{e_door_class} #{e_window_class} #{e_garage_class} #{e_garden_class}"; puts " "
  print "#{f_door_class} #{f_window_class} #{f_garage_class} #{f_garden_class}"; puts " "
  
  2.times do
    get_statistics(:first_house,  "#{d_door_class} #{d_window_class} #{d_garage_class} #{d_garden_class}",
                   :second_house, "#{e_door_class} #{e_window_class} #{e_garage_class} #{e_garden_class}",
                   :third_house,  "#{f_door_class} #{f_window_class} #{f_garage_class} #{f_garden_class}")
  
    print "Metaprobability: "
    dynamic_reward_allocation
  end
end

#is_house_deceptive?("of my home",          deux_chemix_ascenseur("packages", "elevator entrance", "elevator cul de sac"))

isolate_feature("of my house",         "packages", "elevator entrance", "elevator cul de sac",
                "of my sisters house", "packages", "elevator entrance", "elevator cul de sac",
                "of my firneds house", "packages", "elevator entrnace", "elevator cul de sac")
