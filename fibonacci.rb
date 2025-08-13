def fibsIterative(number)
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
  p answer
end

fibsIterative(8)