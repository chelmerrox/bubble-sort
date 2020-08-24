# def bubble_sort(array)

# sorted_array = array.sort

#    loop do
#      for i in 0..array.length - 1
#         value = array[i] <=> array[i + 1]

#         if value == 1  
#           array[i], array[i + 1] = array[i + 1], array[i]
#         else
#           next
#         end
#       end
#      break if array == sorted_array 
#  end
#   return array
# end

# Solution #2
# ===========

# arr = array.length - 1

#   loop do

#     switched = false

#     for i in 0...arr
#       if arr[i].length > arr[i+1].length
#         n = arr[i]
#         arr[i] = arr[i+1]
#         arr[i + 1] = n
#         switched = true
#     end
#     while switched == true
#   end
# return arr
# end
# end
# end

# p bubble_sort([100,100,30,2,9,5,1,-1,0,-190])

# ==============================
#        bubble_sort_by
# ==============================

def bubble_sort_by(array)
#   yield
# end
 
# bubble_sort_by.each do |left, right|
#   value = left <=> right
 
#   if value == 1  
#     left, right = right, left
#   end
# end

  sorted_array = array.sort

   loop do
     for i in 0..array.length - 1
        value = array[i] <=> array[i + 1]
        switch = array[i], array[i + 1] = array[i + 1], array[i]
        yield switch 
        if value.positive?()
     end
    break if array == sorted_array 
  end
 end
print array

p bubble_sort_by([100,100,30,2,9,5,1,-1,0,-190]){ |left, right|
    left.length - right.length}
end
