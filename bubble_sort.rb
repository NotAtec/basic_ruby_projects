def bubble_sort(array)
  unsorted = true
  while unsorted do
    unsorted = false
    array.each_with_index do |val, idx|
      if idx == array.size - 1
        break
      elsif val > array[idx + 1]
        unsorted = true
        array[idx], array[idx + 1] = array[idx + 1], array[idx]
      end
    end
  end
  array
end

p bubble_sort([4,3,78,2,0,2]) #Expect: [0,2,2,3,4,78]