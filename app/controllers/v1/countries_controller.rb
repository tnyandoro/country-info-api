module V1
  class CountriesController < ApplicationController
    def create
      puts(">>>>>>>> HERE <<<<<<<<<<<<<")
      country = Country.new(country_params)

      if country.save
        json_response(country, :created)
      else
        json_response(country.errors, :unprocessable_entity)
      end
    end

    def index
      countries = Country.where(status: 'active')
      json_response(countries, :ok)
    end

    def show
      country_code = params[:code]
      @country = Country.find_by(alpha_2_code: country_code) || Country.find_by(alpha_3_code: country_code)

      if @country
        json_response(@country)
      else
        json_response({ error: 'Country not found' }, :not_found)
      end
    end

    def delete
      country = Country.find(params[:id])

      if country
        country.update(status: 'archived')
        json_response(country.reload, :ok)
      else
        json_response({ error: 'No active country with that ID was found' }, :not_found)
      end
    end

    private

    def country_params
      params.require(:country).permit(:name, :currency, :alpha_2_code, :alpha_3_code, :status)
    end
  end
end
