require 'rails_helper'

RSpec.describe QuestionsController, type: :controller do

  let(:valid_attributes) {
    {id: 10000, question: 'Question', answer: 'answer'}
  }

  let(:invalid_attributes) {
    {question: '', answer: ''}
  }

  let(:valid_session) { {} }

  describe "GET #index" do
    it "returns a success response" do
      get :index
      expect(response).to have_http_status(302)
    end
  end

  describe "GET #new" do
    it "returns a success response" do
      get :new
      expect(response).to have_http_status(302)
    end
  end

  describe "GET #edit" do
    it "returns a success response" do
      question = Question.create! valid_attributes
      get :edit, params: {id: question.id}, session: valid_session
      expect(response).to have_http_status(302)
    end
  end

  describe "POST #create" do
# TODO need to find the way to set @current_user before testing. 
    # context "with valid params" do
    #   it "creates a new Question" do
    #     expect {
    #       post :create, params: {question: valid_attributes}, session: valid_session
    #     }.to change(Question, :count).by(1)
    #   end

    #   it "redirects to the created question" do
    #     post :create, params: {question: valid_attributes}, session: valid_session
    #     expect(response).to redirect_to(Question.last)
    #   end
    # end

    # context "with invalid params" do
    #   it "returns a success response (i.e. to display the 'new' template)" do
    #     post :create, params: {question: invalid_attributes}, session: valid_session
    #     expect(response).to be_success
    #   end
    # end
  end

  describe "PUT #update" do
# TODO need to find the way to set @current_user before testing. 
    # context "with valid params" do
    #   let(:new_attributes) {
    #     skip("Add a hash of attributes valid for your model")
    #   }

    #   it "updates the requested question" do
    #     question = Question.create! valid_attributes
    #     put :update, params: {id: question.to_param, question: new_attributes}, session: valid_session
    #     question.reload
    #     skip("Add assertions for updated state")
    #   end

    #   it "redirects to the question" do
    #     question = Question.create! valid_attributes
    #     put :update, params: {id: question.to_param, question: valid_attributes}, session: valid_session
    #     expect(response).to redirect_to(question)
    #   end
    # end

    # context "with invalid params" do
    #   it "returns a success response (i.e. to display the 'edit' template)" do
    #     question = Question.create! valid_attributes
    #     put :update, params: {id: question.to_param, question: invalid_attributes}, session: valid_session
    #     expect(response).to be_success
    #   end
    # end
  end

  describe "DELETE #destroy" do
# TODO need to find the way to set @current_user before testing. 
    # it "destroys the requested question" do
    #   question = Question.create! valid_attributes
    #   expect {
    #     delete :destroy, params: {id: question.to_param}, session: valid_session
    #   }.to change(Question, :count).by(-1)
    # end

    # it "redirects to the questions list" do
    #   question = Question.create! valid_attributes
    #   delete :destroy, params: {id: question.to_param}, session: valid_session
    #   expect(response).to redirect_to(questions_url)
    # end
  end

end
