  #Release0
  # Method that takes array of integers and an integer to search for. 
  # Array of integers:
  ages_arr = [18, 50, 21, 45, 33, 65, 12]
  
   def search_array(ages_arr, years)
      found = false
   # iterate through array to compare with searched integer
      ages_arr.each do |age|
          if age == years
              found = true
              break
          end
      end
  # Return index of the found integer item or nil if the integer is not present in array.
      if found == true
          return ages_arr.find_index(years)
      else
          return nil
      end
   end
   #driving code
   p search_array(ages_arr, 20)
   p search_array(ages_arr, 21)
  p search_array(ages_arr, 33)


  #Release 1: Calculate Fibonacci Numbers
  def fib(number)
    #start with 0 and 1
     fibonacci = [0,1]
     n = number - 2
     a = 0
     b = 1
   n.times do
     num = a
     a = b
     b += num
   fibonacci << b
   end
       return fibonacci
 end
 
 p fib(6)
 p fib(9)
 p fib(100).last


 #Release2: bubble sort method that takes an array
 def bubble_sort(array)
  n = array.length
#loop through array n-1 times
  loop do
    swap = false
#loop through array one time less than the length
    (n-1).times do |i|
      if array[i] > array[i+1]
        #if the number is greater than the number next to, than swap
        array[i], array[i+1]=array[i+1], array[i]
        swap = true
      end
    end

    break if not swap
  end

  array
end

arr = [1, 4, 2, 35, 4, 1, 10, 3]
puts "original array was #{arr} and bubble sorted array is:"
p bubble_sort(arr)