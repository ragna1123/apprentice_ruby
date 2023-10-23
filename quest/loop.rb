# frozen_string_literal: true

# hello
def hello
  i = 1
  while i < 10
    puts 'こんにちは!'
    i += 1
  end
end

# hello

# sheep
def sheep(s)
  (1..s).each do |i|
    puts "羊が#{i}匹"
  end
end

# sheep(10)

# sum_1_100
def sum_1_100
  num = 0
  (1..100).each do |i|
    num += i
  end
  puts num
end

# sum_1_100

# sum
def sum(x, y)
  num = x
  num_1_plus = x + 1
  (num_1_plus..y).each do |i|
    num += i
  end
  puts num
end

# sum(10, 80)

# fibonacci
# フィボナッチ数列とはどの数字も前２つの数字を足した数字
def fibonacci(n)
  f1 = 0
  f2 = 1
  for i in 1..n do
    if i == 0
      puts f1
    elsif i == 1
      puts f2
    else
      f3 = f1 + f2
      puts f3
      f1 = f2
      f2 = f3
    end
  end
end
fibonacci(30) # => 832040
