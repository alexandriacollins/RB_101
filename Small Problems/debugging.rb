def solution(number)
 # put your solution here
 arr = []
 1.upto(number - 1) {|num| arr << num if num % 3 == 0 || num % 5 == 0}
 arr.sum
end

p solution(200)