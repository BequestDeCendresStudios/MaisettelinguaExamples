def simulation(a, b, c, d, e, f, g, h, i)
  lure = :player_lure, a
  stun = :player_stun, b
  trap = :player_trap, c

  scout  = :build_web,          d
  gather = :gather_information, e
  detect = :detect_monster,     f

  elure = :maid_lure, g
  estun = :maid_stun, h
  etrap = :maid_trap, i

  human_behaviours = [
    [[ lure[0], lure[0], lure[0] ], [ lure[0], lure[0], stun[0] ], [ lure[0], lure[0], trap[0] ]],
    [[ stun[0], stun[0], lure[0] ], [ stun[0], stun[0], stun[0] ], [ stun[0], stun[0], trap[0] ]],
    [[ trap[0], trap[0], lure[0] ], [ trap[0], trap[0], stun[0] ], [ trap[0], trap[0], trap[0] ]],
  ], [
    [[ lure[1], lure[1], lure[1] ], [ lure[1], lure[1], stun[1] ], [ lure[1], lure[1], trap[1] ]],
    [[ stun[1], stun[1], lure[1] ], [ stun[1], stun[1], stun[1] ], [ stun[1], stun[1], trap[1] ]],
    [[ trap[1], trap[1], lure[1] ], [ trap[1], trap[1], stun[1] ], [ trap[1], trap[1], trap[1] ]],
  ]
  
  pet_behaviours = [
    [[  scout[0],  scout[0], scout[0] ], [  scout[0],  scout[0], gather[0] ], [  scout[0],  scout[0], detect[0] ]],
    [[ gather[0], gather[0], scout[0] ], [ gather[0], gather[0], gather[0] ], [ gather[0], gather[0], detect[0] ]],
    [[ detect[0], detect[0], scout[0] ], [ detect[0], detect[0], gather[0] ], [ detect[0], detect[0], detect[0] ]],
  ], [
    [[  scout[1],  scout[1], scout[1] ], [  scout[1],  scout[1], gather[1] ], [  scout[1],  scout[1], detect[1] ]],
    [[ gather[1], gather[1], scout[1] ], [ gather[1], gather[1], gather[1] ], [ gather[1], gather[1], detect[1] ]],
    [[ detect[1], detect[1], scout[1] ], [ detect[1], detect[1], gather[1] ], [ detect[1], detect[1], detect[1] ]],
  ]
  
  maid_behaviours = [
    [[ elure[0], elure[0], elure[0] ], [ elure[0], elure[0], estun[0] ], [ elure[0], elure[0], etrap[0] ]],
    [[ estun[0], estun[0], elure[0] ], [ estun[0], estun[0], estun[0] ], [ estun[0], estun[0], etrap[0] ]],
    [[ etrap[0], etrap[0], elure[0] ], [ etrap[0], etrap[0], estun[0] ], [ etrap[0], etrap[0], etrap[0] ]],
  ], [
    [[ elure[1], elure[1], elure[1] ], [ elure[1], elure[1], estun[1] ], [ elure[1], elure[1], etrap[1] ]],
    [[ estun[1], estun[1], elure[1] ], [ estun[1], estun[1], estun[1] ], [ estun[1], estun[1], etrap[1] ]],
    [[ etrap[1], etrap[1], elure[1] ], [ etrap[1], etrap[1], estun[1] ], [ etrap[1], etrap[1], etrap[1] ]],
  ]
  
  human_symbols      = human_behaviours[0]
  human_descriptions = human_behaviours[1]
  pet_symbols        = pet_behaviours[0]
  pet_descriptions   = pet_behaviours[1]
  maid_symbols        = maid_behaviours[0]
  maid_descriptions   = maid_behaviours[1]
  
  row_options = [0, 1, 2]
  col_options = [0, 1, 2]
  arr_options = [0, 1, 2]
  
  cur_row = row_options.sample
  cur_col = col_options.sample
  cur_arr = arr_options.sample
  
  current_human_symbol      = human_symbols[cur_row][cur_col][cur_arr]
  current_human_description = human_descriptions[cur_row][cur_col][cur_arr]
  
  row_options = [0, 1, 2]
  col_options = [0, 1, 2]
  arr_options = [0, 1, 2]
  
  cur_row = row_options.sample
  cur_col = col_options.sample
  cur_arr = arr_options.sample
  
  current_pet_symbol      = pet_symbols[cur_row][cur_col][cur_arr]
  current_pet_description = pet_descriptions[cur_row][cur_col][cur_arr]

  row_options = [0, 1, 2]
  col_options = [0, 1, 2]
  arr_options = [0, 1, 2]
  
  cur_row = row_options.sample
  cur_col = col_options.sample
  cur_arr = arr_options.sample
  
  current_maid_symbol      = maid_symbols[cur_row][cur_col][cur_arr]
  current_maid_description = maid_descriptions[cur_row][cur_col][cur_arr]
   
  2.times do
    get_statistics(current_human_symbol, current_human_description,
                   current_pet_symbol,     current_pet_description,
                   current_maid_symbol,   current_maid_description)
                   
                   dynamic_reward_allocation
                   dynamic_reward_allocation

  end
  
  sum_of_probabilities
end
