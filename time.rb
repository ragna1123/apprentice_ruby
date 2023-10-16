def time(s)
    h = s/3600
    h2 = s%3600
    m = h2/60
    m2 = m%60
    s = m2
    puts "#{h}:#{m}:#{s}"
end

time(4210)