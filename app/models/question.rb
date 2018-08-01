class Question < ApplicationRecord

  def number_convert
  	self.answer = self.answer.gsub("zero", "0")
  	self.answer = self.answer.gsub("one", "1")
  	self.answer = self.answer.gsub("two", "2")
  	self.answer = self.answer.gsub("three", "3")
  	self.answer = self.answer.gsub("four", "4")
  	self.answer = self.answer.gsub("five", "5")
  	self.answer = self.answer.gsub("six", "6")
  	self.answer = self.answer.gsub("seven", "7")
  	self.answer = self.answer.gsub("eight", "8")
  	self.answer = self.answer.gsub("nine", "9")
  end

  def string_convert
  	self.answer = self.answer.gsub("0", "zero" )
  	self.answer = self.answer.gsub("1", "one"  )
  	self.answer = self.answer.gsub("2", "two"  )
  	self.answer = self.answer.gsub("3", "three")
  	self.answer = self.answer.gsub("4", "four" )
  	self.answer = self.answer.gsub("5", "five" )
  	self.answer = self.answer.gsub("6", "six"  )
  	self.answer = self.answer.gsub("7", "seven")
  	self.answer = self.answer.gsub("8", "eight")
  	self.answer = self.answer.gsub("9", "nine" )
  end


end
