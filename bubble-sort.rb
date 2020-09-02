def bubble_sort(arr)
  indices = arr.length - 1
  for i in 0..indices
    for j in 0..indices-1
        if arr[j] > arr[j+1]
            arr[j], arr[j+1] = arr[j+1], arr[j]
        end
    end
  end
  arr
end

p bubble_sort([2,3,3,4,5,6,7,4])