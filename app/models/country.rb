class Country < ApplicationRecord
    validates :name, :currency, :alpha_2_code, :alpha_3_code, presence: true
end
