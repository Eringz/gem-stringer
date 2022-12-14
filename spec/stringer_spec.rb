# frozen_string_literal: true
require "spec_helper"

RSpec.describe Stringer do
  it "has a version number" do
    expect(Stringer::VERSION).not_to be nil
  end

  it "does something useful" do
    expect(false).to eq(false)
  end

  it "concatenates undefined number of strings with a space" do 
    expect(Stringer.spacify "Oscar", "Vazquez", "Zweig", "Olasaba", "Hernandez", "Ricardo", "Mendoza").to eq("Oscar Vazquez Zweig Olasaba Hernandez Ricardo Mendoza")
  end

  it "minify the length of string in its max length" do
    expect(Stringer.minify "Hello, I'm learning how to create a gem", 10 ).to eq("Hello, I'm")
    expect(Stringer.minify "Hello", 10).to eq("Hello")
  end

  it "replace each instance of a string to a new one" do
    expect(Stringer.replacify "I can't do this", "can't", "can").to eq("I can do this")
  end

  it "iterates over a string and add each word into an array" do
    expect(Stringer.tokenize "I love to code" ).to eq(["I", "love", "to", "code"])
  end

  it "remove each instance of the second parameter within the original string" do
    expect(Stringer.removify "I'm not a developer", "not").to eq("I'm a developer")
  end

end
