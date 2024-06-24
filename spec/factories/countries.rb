FactoryBot.define do
  factory :country do
    name { 'South Africa' }
    currency { 'ZAR' }
    alpha_2_code { 'ZA' }
    alpha_3_code { 'ZAF' }
    status { 'active' }
  end
end
