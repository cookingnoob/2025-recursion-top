def fibs_iterative(number)
  i = 0
  answer = []
  
  while i < number
    if answer.length < 2
        answer.push(i)
    else
      answer.push(answer[i - 2] + answer[i - 1])
    end

    i += 1
  end
  answer
end

fibs_iterative(8)

def fibs_rec(n)
  puts "n: #{n}"
  if n == 2
    [0, 1]
  else
    prev = fibs_rec(n - 1)
    prev + [prev[-1] + prev[-2]]
  end
end

p fibs_rec(8)

# [0, 1, 1, 2, 3, 5, 8, 13]


#fib(8)
# [0, 1, 1, 2, 3, 5, 8] + [13]
# [0, 1, 1, 2, 3, 5, 8] + [5 + 8]
#
# [0, 1, 1, 2, 3, 5] + [8]
# [0, 1, 1, 2, 3, 5] + [3 + 5]
# 
# [0, 1, 1, 2, 3] + [5]
# [0, 1, 1, 2, 3] + [2 + 3]
# 
# fib 4
# [0, 1, 1, 2] + [3]
# [0, 1, 1, 2] + [1 + 2]
# fib(3) + [fib(3)[2] + fib(3)prev[3]]
# 
# fib 3
# [0, 1, 1] + [2]
# [0, 1, 1] + [1 + 1]
# prev + [prev[1] + prev[2]]
# 
# fib 2
# [0, 1] + [1]
# [0, 1] + [0 + 1]
# prev + [prev[0] + prev[1]]
#
#[0] + [1]
#
#
#
#
#                       8
#            6                          7
#       4       5                   5       6
#     2  3.   3.   4
#   0 1 1 2