require 'make_snippet'

RSpec.describe "make_snippet method" do
  it "returns a string if the string is shorter than 5 words" do
    result = make_snippet("Hello, World!")
    expect(result).to eq "Hello, World!"
  end

  it "returns the first 5 words in the string with ... after them" do 
    result = make_snippet("One, two, three, four, five, six") 
    expect(result). to eq "One, two, three, four, five,..."
  end
end
