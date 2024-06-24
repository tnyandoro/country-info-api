# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

_country1 = Country.create({ name: 'Zimbabwe', currency: 'ZiG', alpha_2_code: 'ZW', alpha_3_code: 'ZWE' })
_country2 = Country.create({ name: 'South Africa', currency: 'ZAR', alpha_2_code: 'ZA', alpha_3_code: 'ZAF' })
_country3 = Country.create({ name: 'Zambia', currency: 'Kwacha', alpha_2_code: 'ZM', alpha_3_code: 'ZMB' })
_country4 = Country.create({ name: 'America', currency: 'USD', alpha_2_code: 'US', alpha_3_code: 'USA' })
_country5 = Country.create({ name: 'United Kingdom', currency: 'Pound', alpha_2_code: 'GB', alpha_3_code: 'GBR' })
