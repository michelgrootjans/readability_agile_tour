require 'spec_helper'
require 'primes'

describe "a list of prime numbers" do
  context "up to 1" do
    it "is empty" do
      meets_criteria(1).should == []
    end
  end

  context "up to 2" do
    it "includes 2" do
      meets_criteria(2).should == [2]
    end
  end

  context "up to 3" do
    it "includes [2, 3]" do
      meets_criteria(3).should == [2, 3]
    end
  end

  context "up to 4" do
    it "does not include 4" do
      meets_criteria(4).should == [2, 3]
    end
  end

  context "up to 5" do
    it "includes [2, 3, 5]" do
      meets_criteria(5).should == [2, 3, 5]
    end
  end

  context "up to 20" do
    it "includes [2, 3, 5, 7, 11, 13, 17, 19]" do
      meets_criteria(20).should == [2, 3, 5, 7, 11, 13, 17, 19]
    end
  end

  context "up to 50" do
    it "up to 50 includes [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47]" do
      meets_criteria(50).should == [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47]
    end
  end
end