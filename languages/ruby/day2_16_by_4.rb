array = (1..16).to_a

# using just each
# this exploits that the numbers start and 1 and increase by one in my array
array.each {|e| p array[e - 4..e - 1] if e % 4 == 0}

# using each_index
array.each_index {|i| p array[i - 3..i] if (i + 1) % 4 == 0}

# using each_slice
array.each_slice(4) {|slice| p slice}