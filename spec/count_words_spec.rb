require 'count_words'

RSpec.describe "count_words method" do
  context "if empty string is given" do
    it "returns 0" do
      result = count_words("")
      expect(result).to eq 0
    end
  end

  context "if all words are separated only by spaces" do
    it "returns the number of words" do
      result = count_words("one two three")
      expect(result).to eq 3
    end
  end

  context "if some words are separated by dashes" do
    it "returns the number of words" do
      result = count_words("one two-three")
      expect(result).to eq 3
    end
  end

  context "if some words are separated by ' - '" do
    it "returns the number of words" do
      result = count_words("one two - three")
      expect(result).to eq 3
    end
  end

  context "if some words are separated by ' - ' and some by '-'" do
    it "returns the number of words" do
      result = count_words("one two - three four-five")
      expect(result).to eq 5
    end
  end
end