class Calculator
  attr_accessor :results
  def initialize
    @results = []
  end
  def cow_says
     "mooo"
  end
  def add(a, b)
   answer =  a + b
   @results.push(answer)
   answer
  end
  def divide(a,b)
   answer = a/b
   @results.push(answer)
   answer
  end
  def subtract(a,b)
    answer = a - b
    @results.push(answer)
    answer
  end
  def multiply(a,b)
    answer = a * b
    @results.push(answer)
    answer
  end
  def last_result
    @results.last
  end
  def clear
   @results = []
  end
end
