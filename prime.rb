# create a range of numbers form 2 to on less than the number in question (num -1)
# loop through that range
  # ask if the number in question (num) is cleanly divisible by each number in the range (n)
  # if any one of those range numbers (n) creates a 0 remainder when the number in question 
  # (num) is divided by that number (n), the number in question (n) is not prime
# if at the end of the loop, none of the range numbers (n) created a 0 remainder, the number in 
# question (num) is, indeed, prime

def prime?(num)
    if num < 0 or num == 0 or num == 1
      return false
    else
      (2..num-1).to_a.all? do |possible_factor|
        num % possible_factor != 0
      end
    end
  end