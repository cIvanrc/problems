require 'calculator'

describe Calculator, ":About a Calculator" do
  subject(:cal) { Calculator.new }

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

