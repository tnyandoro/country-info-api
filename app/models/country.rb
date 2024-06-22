class Country < ApplicationRecord
  validates :name, :currency, :alpha_2_code, :alpha_3_code, presence: true
  validates :alpha_2_code, length: { is: 2 }
  validates :alpha_3_code, length: { is: 3 }

  enum :status, %(active archived)
end
