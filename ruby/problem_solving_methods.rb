### Method that takes an array of integers and an integer to search for. 
### Returns the index of the item or nil if the integer is not present in array.
grades = [88, 60, 79, 90, 80, 85]
    
 def locate_array(grades, num)
    grade_new = []
    found = false
 
    grades.each do |item|
        grade_new << item
        if item == num
            found = true
            break
        end
    end
    if found == true
        return grade_new.length - 1
    else
        return nil
    end
 end
 
 p locate_array(grades, 100)
 p locate_array(grades, 80)


##### Fibonacci Method 
def fib(number)
   style_fibonacci = [1,0]
   n = number - 2
   a = 0
   b = 1
 n.times do
   num = a
   a = b
   b = num + b
   style_fibonacci << b
   end
       return style_fibonacci
 end
 
 p fib(6)


 #bubble sort array
 def bubble_sort(array)
  n = array.length

  loop do
    swap = false

    (n-1).times do |i|
      if array[i] > array[i+1]
        array[i], array[i+1]=array[i+1], array[i]
        swap = true
      end
    end

    break if not swap
  end

  array
end

arr = [1, 4, 2, 3, 4, 1, 35, 3]
p bubble_sort(arr)