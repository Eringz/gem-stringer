# frozen_string_literal: true

require_relative "stringer/version"

module Stringer
  class Error < StandardError; end
  # Your code goes here...

  # CONVERT INTO ONE STRING
  def self.spacify *strings
    string = ""
    strings.each do |s|
        string +=  " " + s 
    end
    string.lstrip
  end

  # MINIMIZE THE STRING TO ITS SPECIFIED LENGTH
  def self.minify string, length
      string[0, length]
  end

  # REPLACE EACH INSTANCE OF A STRING TO A NEW ONE
  def self.replacify string, old, new
    string.gsub(old, new)
  end

  # ITERATES AND CONVERT IT INTO AN ARRAY
  def self.tokenize string
    string.split(" ")
  end

  # REMOVE EACH INSTANCE OF THE SECOND PARAMETER WITHIN THE ORIGINAL STRING
  def self.removify string, remove
    a = string.split remove
    a[0].rstrip!
    word = ""
    a.each do |s|
      word += s
    end
    word
  end

end
