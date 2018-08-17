require 'rails_helper'

RSpec.describe GearwyzdController, type: :controller do

  describe "GET #gearwizard" do
    it "returns http success" do
      get :gearwizard
      expect(response).to have_http_status(:success)
    end
  end

end
