#Define a function that checks if a number is divisible by 3. It should take one argument. It should return true or false
def divisible_by_3(number)
  answer = number%3
  answer == 0
end

#Defite a function that checks if a numbersible by 5. It should take one argument. It should return true or false
puts divisible_by_3(8)

puts "_____________"

def divisible_by_5(number)
  answer = number%5
  answer == 0
end

puts divisible_by_5(255)

puts "_____________"

#Define a function that checks if a number is divisible by 3 and 5. It should take one argument. It should return true or false
def divisible_by_3_and_5(number)
  answer = number%15
  answer == 0
end

puts divisible_by_3_and_5(56)

puts "________________"

#Define a function that returns 'Fizz' if a number is divisible by 3, 'Buzz' if a number is divisible by 5 and it returns 'FizzBuzz' if the number is divisible by both 3 and 5
def fizz_buzz_or_both(number)
  a1 = divisible_by_3(number)
  a2 = divisible_by_5(number)
  if a1 == true and a2 == true
    b1 = "fizzbuzz"

  elsif a1 == true and a2 == false
    b1 = "fizz"

  elsif a1 == false and a2 == true
    b1 = "buzz"

  end
  return b1
end
puts fizz_buzz_or_both(10)
