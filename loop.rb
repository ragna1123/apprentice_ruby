def hello
    i = 1
    while i < 100 do
        puts "こんにちは!"
        i += 1
    end
end

# hello()

def sheep(s)
    for i in 1..s do
        puts "羊が#{i}匹"
    end
end

sheep(10)
