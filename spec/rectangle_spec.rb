require 'rectangle'

describe Rectangle do
  subject(:rectangle) { described_class.new }

  describe ".print" do
    it "prints  2 x 2 square" do
      test_square = "\u231C\u231D\n\u231E\u231F"
      expect{ rectangle.printer(2, 2) }.to output(test_square).to_stdout
    end

    it "prints a 3 x 2 rectangle" do
      test_rectangle = "\u231C-\u231D\n\u231E-\u231F"
      expect{ rectangle.printer(3, 2) }.to output(test_rectangle).to_stdout
    end

    it "prints a 3 x 3 square" do
      test_square = "\u231C-\u231D\n| |\n\u231E-\u231F"
      expect{ rectangle.printer(3, 3) }.to output(test_square).to_stdout
    end

    it "prints a 1 x 3 rectagle" do
      test_rectangle = "|\n|\n|\n"
      expect{ rectangle.printer(1, 3) }.to output(test_rectangle).to_stdout
    end
  end
end
