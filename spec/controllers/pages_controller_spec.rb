require 'rails_helper'

RSpec.describe PagesController, type: :controller do

  describe "GET #quiz" do
    it "returns http success" do
      get :quiz
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #result" do
    it "returns http success" do
      get :result
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #judge" do
    it "returns http success" do
      get :judge
      expect(response).to have_http_status(:success)
    end
  end

end
