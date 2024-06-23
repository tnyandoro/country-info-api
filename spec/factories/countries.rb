FactoryBot.define do
  factory :country do
    name { "Zimbabwe" }
    currency { "USD" }
    alpha_2_code { "ZW" }
    alpha_3_code { "ZWE" }
    status { 'active' }
  end
end
