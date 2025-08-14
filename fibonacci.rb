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
  if n == 0
    return [0]
  elsif n == 1
    return [1]
  else
   ans = fibs_iterative(n - 1) 
   ans + [ans[n - 2] + ans[n - 3]]
  end
end

p fibs_rec(8)

# [0, 1, 1, 2, 3, 5, 8, 13]