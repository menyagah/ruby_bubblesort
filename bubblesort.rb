def bubble_sort(arr)
  (arr.length - 1).times do |n|
    (1...arr.length - n).each do |i|
      arr[i - 1], arr[i] = arr[i], arr[i - 1] if arr[i - 1] > arr[i]
    end
  end
  arr
end

def bubble_sort_by(arr)
  return 'Error! Please add a block.' unless block_given?

  (arr.length - 1).times do |n|
    (1...arr.length - n).each do |i|
      orient = yield arr[i - 1], arr[i]
      arr[i], arr[i - 1] = arr[i - 1], arr[i] if orient.positive?
    end
  end
  arr
end
