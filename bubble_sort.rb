def bubble_sort(arr)
  arr.each_index do |_|
    arr.each_index do |i|
      if i < arr.length-1 && arr[i] > arr[i + 1]
        arr[i], arr[i + 1] = arr[i + 1], arr[i]
      end
    end
  end
  arr
end

p bubble_sort([2, 3, 3, 4, 5, 6, 7, 4])