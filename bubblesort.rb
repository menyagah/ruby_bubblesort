def bubble_sort(arr)
  (arr.length - 1).times do |n|
    (1...arr.length - n).each do |i|
      arr[i - 1], arr[i] = arr[i], arr[i - 1] if arr[i - 1] > arr[i]
    end
  end
  arr
end

def bubble_sort_by(arr)
  (arr.length - 1).times do |n|
    (1...arr.length - n).each do |i|
      if block_given?
        orient = yield arr[i - 1], arr[i]
      else
        puts 'Please add a block!!'
        break
      end
      arr[i], arr[i - 1] = arr[i - 1], arr[i] if orient.positive?
    end
  end
  arr
end

# bubble_sort_by([3,2,11,34,56,121,131,1,2,11,44,77,88,10001,1000000,0,-1]) do |left, right|
#     left - right
# end

# p bubble_sort_by(["hi","hello","hey"]) do |left, right|
#     left.length - right.length
# end

p bubble_sort_by([3,2,11,34,56,121,131,1,2,11,44,77,88,10001,1000000,0,-1]) 