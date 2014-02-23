class FibNum

  def generates_fib_sequence(upto)
    fib_number_sequence = [1, 2]
    index = 0
    until fib_number_sequence.last > upto do
      new_fib_entry = fib_number_sequence[index] + fib_number_sequence[index + 1]
      fib_number_sequence << new_fib_entry
      index += 1
    end
    fib_number_sequence.delete(fib_number_sequence.last)
    fib_number_sequence
  end

  def finds_only_even_values_and_sums(fib_sequence)
    even_fib_sequence = []
    fib_sequence.each do |num|
      if num % 2 == 0
        even_fib_sequence << num
      end
    end
   even_fib_sequence.reduce(:+)

  end

  def solution(upto)
    fib_sequence = generates_fib_sequence(upto)
    finds_only_even_values_and_sums(fib_sequence)
  end

end
