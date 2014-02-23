require 'fib_number'

describe FibNum do

  let(:test) { FibNum.new }

  it "generates a fib sequence upto a certain number" do
    test.generates_fib_sequence(20).should == [1, 2, 3, 5, 8, 13]
  end

  it "find only even values and sums" do
    test.finds_only_even_values_and_sums([1, 2, 3, 5, 8, 13, 21, 34]).should == 44
  end


  it "should return 4613732 as the final answer of up to 4 million" do
    test.solution(4000000).should == 4613732
  end

end
