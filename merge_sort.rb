=begin
Build a method #merge_sort that takes in an array and returns 
a sorted array, using a recursive merge sort methodology
=end

def merge_sort(array)
  middle = (array.size / 2)
  return array if array.size < 2

  sort_left = merge_sort(array[0...middle])
  sort_right = merge_sort(array[middle..-1])

  merged = []
  loop do
    left_num = sort_left[0]
    right_num = sort_right[0]

    if left_num.nil?
      merged.concat(sort_right)
      break
    elsif right_num.nil?
      merged.concat(sort_left)
      break
    end

    if left_num < right_num
      merged << left_num
      sort_left.delete_at(0) # Shifts array for new index 0
    else
      merged << right_num
      sort_right.delete_at(0) # Shifts array for new index 0
    end
  end

  merged
end

# Tests
array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
a = array.shuffle
puts merge_sort(a).inspect

array2 = [47, 32, 1, 67, 83, 4, 77, 32, 3, 7, 8, 100]
b = array2.shuffle
puts merge_sort(b).inspect