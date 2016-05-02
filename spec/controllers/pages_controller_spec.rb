require 'rails_helper'

RSpec.describe PagesController, type: :controller do

  describe "GET #authentican_page" do
    it "returns http success" do
      get :authentican_page
      expect(response).to have_http_status(:success)
    end
  end

end
