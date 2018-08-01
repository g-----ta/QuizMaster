require 'rails_helper'

RSpec.describe "questions/index", type: :view do
  before(:each) do
    assign(:questions, [
      Question.create!(
        :question => "Question",
        :answer => "Answer"
      ),
      Question.create!(
        :question => "Question",
        :answer => "Answer"
      )
    ])
  end

  it "renders a list of questions" do
    render
    assert_select ".question-second-column", :text => "Question".to_s, :count => 3
    assert_select ".question-third-column", :text => "Answer".to_s, :count => 3
  end
end
