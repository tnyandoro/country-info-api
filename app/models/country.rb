class Country < ApplicationRecord
  before_create :set_default_status

  validates :name, :currency, :alpha_2_code, :alpha_3_code, presence: true
  validates :alpha_2_code, length: { is: 2 }
  validates :alpha_3_code, length: { is: 3 }

  private

  def set_default_status
    self.status ||= 'active'
  end
end
