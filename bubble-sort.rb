def bubble_sort(array)
#   array.each do |element|
    
#     for i in 0..array.length - 1
#       if array[i] > array[i + 1]
#         p array[i]
#         p array[i + 1]
#         array[element], array[element + 1] = array[element + 1], array[element]
#       end
#     end
#   end
#   return array
# end




=begin
for i in 0..array.length-1
   n = array[i]
   x = array[i + 1]

  until n <= x 
   n, x = x, n
  end 
  p array[i]
  #return array[i]
end
=end


  


  loop do
    for i in 0..array.length - 1
         value = array[i] <=> array[i + 1]

         if value == 1
         array[i], array[i + 1] = array[i + 1], array[i]
         elsif value == 0 || value == -1
          next
        end
    end
    break if #breaks only if array is sorted; must return a boolean
  end

 puts "Array: #{array}"
 #return array
end
 

p bubble_sort([2,3,7,4,1,6])