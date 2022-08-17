require 'reading_time'

RSpec.describe "reading_time" do
  context "if empty text is given" do
    it "returns 0" do
      expect(reading_time("")).to eq 0
    end
  end

  context "if short text is given" do
    it "returns 1" do
      expect(reading_time("one two three")).to eq 1
    end
  end

  context "long text is given" do
    it "returns number of minutes" do
      expect(reading_time("one " * 300)).to eq 2
    end
  end

end