require 'grammar_check'

RSpec.describe "grammar check" do
  it "returns false for no capital at astart of a sentence" do
    result = grammar_check("Hello, world!")
    expect(result).to eq true
  end

  it "returns false for no capital at astart of a sentence" do
    result = grammar_check("hello, world!")
    expect(result).to eq false
  end

  it "returns false for no capital at astart of a sentence" do
    result = grammar_check("Hello, world")
    expect(result).to eq false
  end

  it "fails if nil input" do
    expect{ grammar_check(nil) }.to raise_error "Input string!"
  end

  it "fails if empty string" do
    expect{ grammar_check("") }.to raise_error "Input string!"
  end

  it "returns false for 2 full stops (..)" do
    result = grammar_check("Hello, world..")
    expect(result).to eq false
  end

  it "returns true for ellipses (...)" do
    result = grammar_check("Hello, world...")
    expect(result).to eq true
  end

end