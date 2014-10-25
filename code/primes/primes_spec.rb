require_relative "criteria"

describe "prime numbers" do
  it "primes don't contain 1" do
    meets_criteria(1).should == []
  end

  it "should include 2" do
    meets_criteria(2).should == [2]
  end

  it "should include 3" do
    meets_criteria(3).should == [2, 3]
  end

  it "should not include 4" do
    meets_criteria(4).should == [2, 3]
  end

  it "should include 5" do
    meets_criteria(5).should == [2, 3, 5]
  end

  it "up to 20 should be include [2, 3, 5, 7, 11, 13, 17, 19]" do
    meets_criteria(20).should == [2, 3, 5, 7, 11, 13, 17, 19]
  end
end