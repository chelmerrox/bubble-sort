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



  sorted_array = array.sort

   loop do
     for i in 0..array.length - 1
          value = array[i] <=> array[i + 1]

           if value == 1
             array[i], array[i + 1] = array[i + 1], array[i]
           elsif value == 0 || value == -1
             next
          end
      end
     break if array == sorted_array 
 end

  puts "Array: #{array}"
  
  return array
end

#  =====================

#  arr = array.length - 1
 
#  (0..arr).each do |i|

#   n = array[i]
#   x = array[i + 1]

#   if n > x
#     array[i], array[i + 1] = array[i + 1], array[i]
#   else
#     next
#   end
#   return array
# end  


#----------------------

=begin
arr = array.length - 1
counter = 0

(0...arr).each do |i|
  if array[i] > array[i + 1]
    array[i], array[i + 1] = array[i + 1], array[i]
    counter = 1
  elsif array[i] < array[-1]
    puts "#{array[-1]}"
    counter == 0    
  break if 
    counter == 0
  end
  
  #puts "Array: #{array}"
  return array
  end

end
=end

#p bubble_sort([2,3,7,4,1,6])
p bubble_sort([100,100,30,2,9,5,1,-1,0,-190])