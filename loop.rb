# hello
def hello
    i = 1
    while i < 10 do
        puts "こんにちは!"
        i += 1
    end
end

hello()

# sheep
def sheep(s)
    for i in 1..s do
        puts "羊が#{i}匹"
    end
end

sheep(10)

# sum_1_100
def sum_1_100
    num = 0
    for i in 1..100 do
        num = num + i
    end
    puts num
end

sum_1_100()


# sum
def sum(x,y)
    num = x
    num_1_plus = x + 1
    for i in num_1_plus..y do
        num = num + i
    end
    puts num
end

sum(10,80)
