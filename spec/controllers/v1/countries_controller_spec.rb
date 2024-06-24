require 'rails_helper'

RSpec.describe V1::CountriesController, type: :controller do

  render_views

  describe "POST #create" do
    it "returns http success" do
      post :create, params: { country: { name: 'Test Country', currency: 'TST', alpha_2_code: 'TC', alpha_3_code: 'TCO', status: 'active' } }
      expect(response).to have_http_status(:created)
    end
  end

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #show" do
    let!(:country) { Country.create(name: 'Test Country', currency: 'TST', alpha_2_code: 'TC', alpha_3_code: 'TCO', status: 'active') }

    it "returns http success" do
      get :show, params: { code: 'TC' }
      expect(response).to have_http_status(:success)
    end
  end

  describe "DELETE #delete" do
    let!(:country) { Country.create(name: 'Test Country', currency: 'TST', alpha_2_code: 'TC', alpha_3_code: 'TCO', status: 'active') }

    it "returns http success" do
      delete :delete, params: { id: country.id }
      expect(response).to have_http_status(:ok)
    end
  end

end
