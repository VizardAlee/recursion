# Psuedocode
# take an array and divide into two parts
# divide each part further into two until indivisible
# sort each 2 part and merge
# until the orginal array is fully sorted

num = rand(10) + 1
array = []
while num.positive?
  rand_num = rand(200) + 1
  array << rand_num
  num -= 1
end
p array

def merge_sort(array)
  
end