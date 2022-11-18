array = [1, 2, 3, 4]

def search (arr, n)
    arr.each_with_index do |a, i|
        return i if n==a
    end
    return -1
end 

puts search array, 3