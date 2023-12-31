# frozen_string_literal: true

def greater(x, y)
  if x > y
    puts 'x > y'
  elsif x < y
    puts 'x < y'
  else
    puts 'x = y'
  end
end

greater(7, 5)

def train_face(age)
  if age >= 12
    puts '200'
  elsif age >= 6 && age < 12
    puts '100'
  else
    puts '0'
  end
end

train_face(11)

def xor(x, y)
  if x && y
    puts false
  elsif x && !y || !x && y
    puts true
  else
    puts false
  end
end

xor(false, true)
