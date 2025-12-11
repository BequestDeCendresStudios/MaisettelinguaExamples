require "NeoPathfinding"

def create_rule
  a = "le bati"
  b = "le sofa"
  c = "le chaise"

  d = "escelator de gauche"
  e = "escelator de centre"
  f = "escelator de droite"

  entrances = [
    [[a, a, a], [a, a, b], [a, a, c]],
    [[b, b, a], [b, b, b], [b, b, c]],
    [[c, c, a], [c, c, b], [c, c, c]],
  ]

  item_drops = [
    [[d, d, d], [d, d, e], [d, d, f]],
    [[e, e, d], [e, e, e], [e, e, f]],
    [[f, f, d], [f, f, e], [f, f, f]],
  ]

  row_options = [0, 1, 2]
  col_options = [0, 1, 2]
  arr_options = [0, 1, 2]

  cur_row = row_options.sample
  cur_col = col_options.sample
  cur_arr = arr_options.sample

  new_entrance = entrances[cur_row][cur_col][cur_arr]
  new_drops    = item_drops[cur_row][cur_col][cur_arr]

  is_house_deceptive?("Mein maisette", deux_chemix_ascenseur("packages", new_entrance, new_drops))
end

markov_one = Gabbler.new
markov_two = Gabbler.new
markov_tre = Gabbler.new
markov_fro = Gabbler.new
markov_fiv = Gabbler.new
markov_six = Gabbler.new

a = markov_one.learn(create_rule)
b = markov_two.learn(create_rule)
c = markov_tre.learn(create_rule)
d = markov_fro.learn(create_rule)
e = markov_fiv.learn(create_rule)
f = markov_six.learn(create_rule)

2.times do  
  get_statistics(:trivia_one, a,
                 :trivia_two, b,
                 :trivia_tre, c)
        
                 dynamic_reward_allocation
                 dynamic_reward_allocation
end
 
2.times do  
  get_statistics(:trivia_one, d,
                 :trivia_two, e,
                 :trivia_tre, f)
        
                 dynamic_reward_allocation
                 dynamic_reward_allocation
end
