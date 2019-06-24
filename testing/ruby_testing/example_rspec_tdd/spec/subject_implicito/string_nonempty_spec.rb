require "string_nonempty"

describe String do
  describe StringNonempty do
    it 'Nonempty' do
      expect(subject).to eq("I'm not empty")
    end
  end
end
