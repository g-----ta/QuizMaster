require 'rails_helper'

RSpec.describe UsersController, type: :controller do

  describe "GET #login_form" do
    it "returns http success" do
      get :login_form
      expect(response).to have_http_status(:success)
    end
  end

end
