# Psuedocode
# take an array and divide into two parts
# divide each part further into two until indivisible
# sort each 2 part and merge
# until the orginal array is fully sorted

num = rand(20) + 1
array = []
while num.positive?
  rand_num = rand(300) + 1
  array << rand_num
  num -= 1
end
p array

#double = array.slice()
#p double

def left_slice(array)
  arr_half_length = array.length / 2
  array.slice(0, arr_half_length)
end

def right_slice(array)
  arr_full_length = array.length
  arr_half_length = array.length / 2
  array.slice(arr_half_length, arr_full_length)
end

def merge_sort(array)
  if array.length < 2
    array
  else
    mid = array.length / 2
    left = merge_sort(array.slice(0, mid))
    right = merge_sort(array.slice(mid, array.length))
    merge(left, right)
  end
end

def merge(left, right)
  sorted = []
  if left.empty?
    right
  elsif right.empty?
    left
  elsif left.first < right.first
    [left.first] + merge(left[1..left.length], right)
  else
    [right.first] + merge(left, right[1..right.length])
  end
end

p merge_sort(array)
