require 'spec_helper'
require_relative '../sum_without_max_min'

describe "SumWithoutMaxMin" do

  it "Sum all of the values from an array without the maximum and the minimum value" do
    s = Sum.new
    expect(s.sum([ 6, 2, 1, 8, 10 ])).to eql 16
  end

  it "Sum all of the values from an array without the maximum and the minimum value" do
    s = Sum.new
    expect(s.sum([ 1, 1, 11, 2, 3 ])).to eql 6
  end
end
