require 'rails_helper'

RSpec.describe PagesController, type: :controller do

  let(:valid_attributes) {
    {id: 10000, question: 'Question', answer: 'answer'}
  }

  let(:invalid_attributes) {
    {question: '', answer: ''}
  }

  let(:valid_session) { {} }

  describe "GET pages#quiz" do
    it "confirm @question exists" do
      get :quiz
      expect(response).to have_http_status(302)
    end
  end

  describe "GET pages#result" do
    it "returns http success" do
      get :result
      expect(response).to have_http_status(302)
    end
  end

  describe "POST pages#judge" do
    it "should be checked judge method" do
      question = Question.create! valid_attributes
      post :judge, params: {id: question.id}, session: valid_session
      expect(response).to have_http_status(302)
    end
  end

end
