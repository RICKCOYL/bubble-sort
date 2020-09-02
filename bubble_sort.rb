def bubble_sort(arr)
  arr.each_index do |_|
    arr.each_index do |i|
      arr[i], arr[i + 1] = arr[i + 1], arr[i] if i < arr.length - 1 && arr[i] > arr[i + 1]
    end
  end
  arr
end

def bubble_sort_by(arr)
  arr.each_index do |_|
    arr.each_index do |i|
      if i < arr.length - 1
        arr[i], arr[i + 1] = arr[i + 1], arr[i] if yield(arr[i], arr[i + 1]).positive?
      end
    end
  end
  arr
end

result = bubble_sort_by(%w['hi', 'hello', 'hey', 'hand', 'house']) { |left, right| left.length - right.length }

p result
