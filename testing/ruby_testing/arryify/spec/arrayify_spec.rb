require 'spec_helper'
require_relative '../arrayify'


describe "Arrayify" do
  let(:a) { Arrayify.new }

  it "conver number to array" do
    expect(a.to_array(348597)).to eql [3,4,8,5,9,7]
  end


  it "convert number to array inverted" do
    expect(a.to_array_inverted(348597)).to eql [7,9,5,8,4,3]
  end
end
