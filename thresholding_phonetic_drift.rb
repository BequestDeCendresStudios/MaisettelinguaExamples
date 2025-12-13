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

def parser(a, e, i, o, u, y)
  first_word  = :first_word,  a.downcase
  second_word = :second_word, e.downcase
  third_word  = :third_word,  i.downcase
  fourth_word = :fourth_word, o.downcase
  fifth_word  = :fifth_word,  u.downcase
  sixth_word  = :sixth_word,  y.downcase
  
  phonemes = {
    "b" =>  "ba", "c" =>  "ca", "d" =>  "da",
    "f" => "fsa", "g" =>  "ga", "h" => "hma",
    "j" =>  "ja", "k" =>  "ka", "k" => "hma",
    "m" =>  "wa", "n" =>  "na", "p" =>  "pa",
    "q" =>  "qa", "r" =>  "da", "s" => "sfa",
    "t" => "twa", "v" => "vwa", "w" => "wa",
    "x" => "xa", "z" => "za",
  }, {
    "b" =>  "be", "c" =>  "ce", "d" =>  "de",
    "f" => "fse", "g" =>  "ge", "h" => "hme",
    "j" =>  "je", "k" =>  "ke", "l" => "hme",
    "m" =>  "we", "n" =>  "ne", "p" =>  "pe",
    "q" =>  "qe", "r" =>  "de", "s" => "sfe",
    "t" => "twe", "v" => "vwe", "w" =>  "we",
    "x" =>  "xe", "z" =>  "ze",
  }, {
    "b" =>  "bi", "c" =>  "ci", "d" =>  "di",
    "f" => "fsi", "g" =>  "gi", "h" => "hmi",
    "j" =>  "ji", "k" =>  "ki", "l" => "hmi",
    "m" =>  "wi", "n" =>  "ni", "p" =>  "pi",
    "q" =>  "qi", "r" =>  "di", "s" => "sfi",
    "t" => "twi", "v" => "vwi", "w" =>  "wi",
    "x" =>  "xi", "z" =>  "zi",
  }, {
    "b" =>  "bo", "c" =>  "co", "d" =>  "do",
    "f" => "fso", "g" =>  "go", "h" => "hmo",
    "j" =>  "jo", "k" =>  "ko", "l" => "hmo",
    "m" =>  "wo", "n" =>  "no", "p" =>  "po",
    "q" =>  "qo", "r" =>  "do", "s" => "sfo",
    "t" => "two", "v" => "vwo", "w" =>  "wo",
    "x" =>  "xo", "z" =>  "zo",
  }, {
    "b" =>  "bu", "c" =>  "cu", "d" =>  "du",
    "f" => "fsu", "g" =>  "gu", "h" => "hmu",
    "j" =>  "ju", "k" =>  "ku", "l" => "hmu",
    "m" =>  "wu", "n" =>  "nu", "p" =>  "pu",
    "q" =>  "qu", "r" =>  "du", "s" => "sfu",
    "t" => "twu", "v" => "vwu", "w" =>  "wu",
    "x" =>  "xu", "z" =>  "zu",
  }, {
    "b" =>  "by", "c" =>  "cy", "d" =>  "dy",
    "f" => "fsy", "g" =>  "gy", "h" => "hmy",
    "j" =>  "jy", "k" =>  "ky", "l" => "hmy",
    "m" =>  "wy", "n" =>  "ny", "p" =>  "py",
    "q" =>  "qy", "r" =>  "dy", "s" => "sfy",
    "t" => "twy", "v" => "vwy", "w" =>  "wy",
    "x" =>  "xy", "z" =>  "zy",
  }
  
  a_set = phonemes[0]
  e_set = phonemes[1]
  i_set = phonemes[2]
  o_set = phonemes[3]
  u_set = phonemes[4]
  y_set = phonemes[4]
  
  a_translation = a[0], a_set[first_word[1]]
  e_translation = i[0], e_set[second_word[1]]
  i_translation = e[0], i_set[third_word[1]]
  o_translation = o[0], o_set[fourth_word[1]]
  u_translation = u[0], u_set[fifth_word[1]]
  y_translation = y[0], y_set[sixth_word[1]]
  
  2.times do
    get_statistics(a_translation[0], a_translation[1],
                   e_translation[0], e_translation[1],
                   i_translation[0], i_translation[1])
                   
                   dynamic_reward_allocation

    get_statistics(o_translation[0], o_translation[1],
                   u_translation[0], u_translation[1],
                   y_translation[0], y_translation[1])
                   
                   dynamic_reward_allocation
  end
end

def tokenize(a)
  input = a.split("")
  
  parse(input)
end
