def bubble_sort(array)
  # prints the initial unsorted array
  puts "Un-sorted array: #{array}"
  arr = array.length - 1
  loop do
    # created a boolean variable, default is false.
    swap = false
    # loop through the array
    (0...arr).each do |i|
      # created two variables for the first number and the one after as 'i'
      # so it keeps checking every number next to eachother.
      n_one = array[i]
      n_two = array[i + 1]

      # if the first number is greater than the one after, swap.
      if n_one > n_two
        array[i], array[i + 1] = array[i + 1], array[i]
        # swap becomes true when a swap has happened
        swap = true
      else
        next
      end
    end
    # the loop breaks when no swap has happened
    break unless swap == false
  end
  puts "Sorted array: #{array}"
  array
end

p bubble_sort([100, 100, 30, 2, 9, 5, 1, -1, 0, -190])

# ==============================
#        bubble_sort_by
# ==============================

def bubble_sort_by(array)
  puts "Un-sorted array: #{array}"
  arr = array.length - 1

  loop do
    swap = false
    (0...arr).each do |i|
      n_one = array[i]
      n_two = array[i + 1]
      if yield(n_one, n_two).positive?
        array[i], array[i + 1] = array[i + 1], array[i]
        swap = true
      end
    end
    break if swap == false
  end
  puts "Sorted array: #{array}"
end

bubble_sort_by(%w[hi hello hey]) do |left, right|
  left.length - right.length
end
