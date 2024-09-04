def merge_sort(arr)
  len = arr.length
  if len <= 2
    temp = if arr[0] > arr[-1]
             arr.reverse
           else
             arr
           end
  else
    left = merge_sort(arr.take(len / 2))
    right = merge_sort(arr.drop(len / 2))
    temp = sort_two_arrays(left, right)
  end
  return temp
end


def sort_two_arrays(left, right)
  temp = []
  loop do
    if left.empty? || right.empty?
      temp += left + right
      break
    elsif left[0] < right[0]
      temp << left.shift
    else
      temp << right.shift
    end
  end
  return temp
end
