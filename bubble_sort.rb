def bubble_sort(array)
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

      if n_one > n_two
        # if the first number is greater than the one after, swap.
        array[i], array[i + 1] = array[i + 1], array[i]
        # swap becomes true when a swap has happened
        swap = true
      end
      next unless
        n_two > n_one
    end
    # the loop breaks when no swap has happened
    break if swap == false
  end
  array
end

# p bubble_sort([3, 1, 60, 50, 10, -500, -100, -1, 40])

# ==============================
#        bubble_sort_by
# ==============================

def bubble_sort_by(array)
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
  array
end

# p bubble_sort_by(%w[hi hello hey]) { |left, right| left.length - right.length }
