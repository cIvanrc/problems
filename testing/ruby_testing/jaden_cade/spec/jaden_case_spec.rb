require 'spec_helper'
require_relative '../jaden_case'


describe "JadenCase" do

  it "convert text to jaden case" do
    j = JadenCase.new("How can mirrors be real if our eyes aren't real")
    expect(j.to_jaden_case).to eql "How Can Mirrors Be Real If Our Eyes Aren't Real"
  end
end
