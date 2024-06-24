require 'rails_helper'

RSpec.describe Country, type: :model do

  # Validations
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:currency) }
  it { should validate_presence_of(:alpha_2_code) }
  it { should validate_presence_of(:alpha_3_code) }

  it { should validate_length_of(:alpha_2_code).is_equal_to(2) }
  it { should validate_length_of(:alpha_3_code).is_equal_to(3) }

  # Ensure a default status is set before creation
  describe 'callbacks' do
    it 'sets default status to active before creation' do
      country = Country.new(name: 'Test Country', currency: 'TST', alpha_2_code: 'TC', alpha_3_code: 'TCO')
      country.save
      expect(country.status).to eq('active')
    end
  end
end
