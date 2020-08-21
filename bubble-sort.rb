def bubble_sort(array)
  array.each do |element|
    
    for i in 0..array.length - 1
      if array[i] > array[i + 1]
        p array[i]
        p array[i + 1]
        #array[element], array[element + 1] = array[element + 1], array[element]
      end
    end
  end
  #return array
end

p bubble_sort([2,3,7,4,1,6])