def bubble_sort(arr)
    (arr.length-1).times do |n|
        for i in (1...arr.length-n)
            if arr[i-1] > arr[i] 
                arr[i-1], arr[i] = arr[i], arr[i-1]
            end
        end
    end
    return arr
end

def bubble_sort_by(arr)
    (arr.length-1).times do |n|
        for i in (1...arr.length-n)
            orient = yield arr[i-1], arr[i] if block_given?
            if orient > 0
                arr[i], arr[i-1] = arr[i-1], arr[i]
            end
        end
    end
    return arr
end

# bubble_sort_by([3,2,11,34,56,121,131,1,2,11,44,77,88,10001,1000000,0,-1]) do |left, right| 
#     left - right
# end

# p bubble_sort_by(["hi","hello","hey"]) do |left, right| 
#     left.length - right.length
# end
