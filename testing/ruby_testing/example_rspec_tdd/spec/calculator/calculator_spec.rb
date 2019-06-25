require 'calculator'

describe Calculator, ":About a Calculator" do
  subject(:cal) { Calculator.new }

  context '#div' do
    it 'error: divide by 0' do
      expect{ cal.div(3,0) }.to raise_error(ZeroDivisionError)
      expect{ cal.div(3,0) }.to raise_error("divided by 0")
      expect{ cal.div(3,0) }.to raise_error(ZeroDivisionError,"divided by 0")
      expect{ cal.div(3,0) }.to raise_error(/divided/)
    end
  end

  context '#sum' do
    it "with positive numbers" do
      result = cal.sum(2,5)
      expect(result).to eq(7)
    end

    it "with negative and positive numbers" do
      result = cal.sum(-2,5)
      expect(result).to eq(3)
    end

    it "with negative numbers" do
      result = cal.sum(-2,-5)
      expect(result).to eq(-7)
    end
  end
end

