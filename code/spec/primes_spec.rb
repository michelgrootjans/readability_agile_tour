require 'spec_helper'
require 'criteria'

describe "prime numbers" do
  it "do not include 1" do
    meets_criteria(1).should == []
  end

  it "include 2" do
    meets_criteria(2).should == [2]
  end

  it "include 3" do
    meets_criteria(3).should == [2, 3]
  end

  it "do not include 4" do
    meets_criteria(4).should == [2, 3]
  end

  it "includes 5" do
    meets_criteria(5).should == [2, 3, 5]
  end

  it "up to 20 include [2, 3, 5, 7, 11, 13, 17, 19]" do
    meets_criteria(20).should == [2, 3, 5, 7, 11, 13, 17, 19]
  end

  it "up to 50 include [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47]" do
    meets_criteria(50).should == [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47]
  end
end