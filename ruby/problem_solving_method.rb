# build a method to search through array to find number
# and print out the array index if it is in the array
# if it doesn't exist in array, output should be nil
# arr = [42, 89, 23, 1]
# p search_array(arr, 1)
# ==> 3
# p search_array(arr, 24)
# ==> nil

array = [14, 24, 34, 44, 54]

def search(array, n)
	integer = nil
	array.length.times do |i|
			if array[i] == n
				integer = i
			end
	end 
	p integer
end

search(array, 44)

# initiate array that is empty but intialize with 100
# creater method that starts w 0 and 1 set to variables and add
# math = 0 + 1 = 2 + 1 = 3 + 2 = 5 + 3 = 8
# call array run through it until adds up each 
# number until the number called

# example: fib(6)
# ==> [0,1,1,2,3,5]
# ==> total is 8

fib_array = Array.new

def fibonacci(n)
	# this method performs the sequence
	# example with fib(6)
  # (0)
  # (1) 0 + 1 = 1
  # (2) 1 + 1 = 2
  # (3) 2 + 1 = 3
  # (4) 3 + 2 = 5
  # (5) 5 + 3 = 8

  # the sequence will always start with 0 and 1
  a = 0
  b = 1
  n.times do 
  	temp_i = a 
  	a = b
  	b = temp_i + b
    # this loop will keep adding up the previous two numbers 
    # in sequence until the number called (n)
  end
  return a
end

# to test out if the method worked, 
# the number of times will need to reflect 
# the called number in the method
6.times do |n|
	fib_array.push(fibonacci(n))
	# .push adds tho the array
	p fib_array
	# this will continually print out the sequence 
	# until that number is reached
end 

fibonacci(6)


# bubble sort method
# starting with the second element of the array index,
# each element will compare to see if it is less or greater than
# the value of the first index. If it is greater, it will
# continue on and switch spots in the array index until 
# all of the elements in the array have been sorted 

array = [1,4,7,9,4,3,5,7]

def bubble_sort(array)
	number = array.length
	
	loop do
		sorted = false 
    # while this array is NOT sorted
    
    (number-1).times do |i|
        # starting from the 2nd index, it will compare to the 
        # first index. if the 2nd element is greater than the 
        # next element, they will swap indexes
        if array[i] > array[i+1]
					# to switch the two elements in the array index
          array[i], array[i+1] = array[i+1], array[i]
          # loop will continue to swap the elements until reaches the
          # end of the array or its proper place
          sorted = true
        end
    end
		break if not sorted
    # break after the array has been sorted
	end
  # output the sorted array  
  array
end

bubble_sort(array)
