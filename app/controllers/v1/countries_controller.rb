module V1
  class CountriesController < ApplicationController
    def create; end

    def index; end
    
    def show
      country_code = params[:code]
      @country = Country.find_by(alpha_2_code: country_code) || Country.find_by(alpha_3_code: country_code)

      if @country
        json_response(@country, status: 200)
      else
        json_response({ error: 'Country not found' }, status: 404)
      end
    end
  end
end
