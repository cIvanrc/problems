require 'spec_helper'
require_relative '../math_maddness'

describe "MathMaddness" do
  let(:math_maddness) { MathMaddness.new }

  context "sum operations" do
    describe "sum arithmetic" do 
      it "return sum of two number" do
        expect(math_maddness.sum(5,10)).to eql 15
      end

      it "return sum of three numbers" do
        expect(math_maddness.sum(5,10, 2)).to eql 17
      end

    end
  end

  context "substraction operations" do
    describe "substraction arithmetic" do 
      it "returns the subtraction of two numbers" do
        expect(math_maddness.subtraction(5,10)).to eql(-5)
      end

      it "returns the subtraction of three numbers" do
        expect(math_maddness.subtraction(50,5,10)).to eql 35
      end

    end
  end

  context "multiply operations" do
    describe "multiply arithmetic" do 
      it "returns the multiplication of two numbers" do
        expect(math_maddness.multiply(5,10)).to eql 50
      end

      it "returns the multiplication of three numbers" do
        expect(math_maddness.multiply(5,10, 2)).to eql 100
      end

    end

  end

  context "division operations" do
    describe "division arithmetic" do 
      it "returns the division of two numbers" do
        expect(math_maddness.division(10, 5)).to eql 2
      end

      it "returns the division of three numbers" do
        expect(math_maddness.division(80,2, 5)).to eql 8
      end

    end
  end

end
