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

p bubble_sort([3,2,11,34,56,121,131,1,2,11,44,77,88,10001,1000000,0,-1])

  