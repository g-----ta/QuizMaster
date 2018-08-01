require 'rails_helper'

RSpec.describe Question, type: :model do
  it "Can convert number to string" do
	question = Question.new(
		question: "How many vowels are there in the English alphabet?",
		answer: "5"
	)
	expect(question.string_convert).to eq "five"
  end

  it "Can convert string to number" do
	question = Question.new(
		question: "How many vowels are there in the English alphabet?",
		answer: "five"
	)
	expect(question.number_convert).to eq "5"
  end
end
