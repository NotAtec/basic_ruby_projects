def bubble_sort(array)
  # until array = sorted:
  # grab first item
  # Compare to next item
  # If second item < first item: Swap items, array val = false
  # Else: Keep items, set array val = true
  # grap next item, and redo comparison
  sorted = false
  until sorted do
    unsorted = false
    array.each_with_index do |val, idx|
      if idx == array.size - 1
        if unsorted == true 
          sorted = false
        end
        break
      elsif val < array[idx + 1]
        sorted = true
      else
        unsorted = true
        val2 = array[idx + 1]
        array[idx] = val2
        array[idx + 1] = val
      end
      p array
    end
  end
  array
end

p bubble_sort([4,3,78,2,0,2]) #Expect: [0,2,2,3,4,78]