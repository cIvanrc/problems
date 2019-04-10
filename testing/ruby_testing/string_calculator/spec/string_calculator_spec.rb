require 'spec_helper'
require_relative '../string_calculator'


describe "StringCalculator" do
  let(:s) { StringCalculator.new }


  it "return 0 for an empty string" do
    expect(s.add("")).to eql 0
  end

  it "return the sum of values, if is just a number, return it" do
    expect(s.add("1")).to eql 1
  end

  it "return the sum of all numbers" do
    expect(s.add("1,2")).to eql 3
  end

  it "return the sum of all numbers" do
    expect(s.add("1\n2,3")).to eql 6
  end

  it "return exception with negative numbers" do
    expect{ s.add("1\n2,-3") }.to raise_error(NegativeError, "Error::There are negative numbers: -3")
  end

  it "numbers bigger tahn 1000 should be ignored" do
    expect(s.add("//[***]\n1000***2***3")).to eql 5
  end
end
