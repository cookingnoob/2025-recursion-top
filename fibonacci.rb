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
  if n == 2
    return [0, 1]
  else
    prev = fibs_rec(n - 1)
    prev + [prev[-2] + prev[-1]]
  end
end

p fibs_rec(8)

# [0, 1, 1, 2, 3, 5, 8, 13]