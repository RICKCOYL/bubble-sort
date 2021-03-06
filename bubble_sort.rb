def bubble_sort(arr)
  arr.each_index do |_|
    swapped = false
    arr.each_index do |i|
      if (i < arr.length - 1) && (arr[i] > arr[i + 1])
        arr[i], arr[i + 1] = arr[i + 1], arr[i]
        swapped = true
      end
    end
    break unless swapped
  end
  arr
end

def bubble_sort_by(arr)
  arr.each_index do |_|
    swapped = false
    arr.each_index do |i|
      next if i == arr.length - 1

      if yield(arr[i], arr[i + 1]).positive?
        arr[i], arr[i + 1] = arr[i + 1], arr[i]
        swapped = true
      end
    end
    break unless swapped
  end
  arr
end
