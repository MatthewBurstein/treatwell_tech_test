require 'rectangle'

describe Rectangle do
  subject(:rectangle) { described_class.new }

  describe ".print" do
    it "prints  2 x 2 square" do
      square = "\u231C\u231D\n\u231E\u231F"
      expect{ rectangle.printer(2, 2) }.to output(square).to_stdout
    end
  end
end
