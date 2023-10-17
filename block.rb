# each

def print_names(names)
    names.each.with_index(1) do |name, i|
      puts "#{i}. #{name}"
    end
end

print_names(['上田', '田仲', '堀田'])


# map

def square(numbers)
    numbers.map do |number|
        number ** 2
    end
end

squared_numbers = square([5, 7, 10])
print squared_numbers


#select

def select_even_numbers(numbers)
    even = numbers.select{|number|number.even?}
end

even_numbers = select_even_numbers([1, 2, 3, 4, 5, 6, 7, 8, 9, 10])
print even_numbers