require 'spec_helper'
require_relative '../string_calculator'


describe "StringCalculator" do


  it "return 0 for an empty string" do
    s = StringCalculator.new
    expect(s.add("")).to eql 0
  end

  it "return the sum of values, if is just a number, return it" do
    s = StringCalculator.new
    expect(s.add("1")).to eql 1
  end

  it "return the sum of all numbers" do
    s = StringCalculator.new
    expect(s.add("1,2")).to eql 3
  end

  it "return the sum of all numbers" do
    s = StringCalculator.new
    expect(s.add("1\n2,3")).to eql 6
  end

  it "return exception with negative numbers" do
    s = StringCalculator.new
    expect{ s.add("1\n2,-3") }.to raise_error(NegativeError, "Error::There are negative numbers: -3")
  end
end
