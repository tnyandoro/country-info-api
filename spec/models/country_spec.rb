require 'rails_helper'

RSpec.describe Country, type: :model do
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:currency) }
  it { should validate_presence_of(:alpha_2_code) }
  it { should validate_presence_of(:alpha_3_code) }

  it { should validate_length_of(:alpha_2_code).is_equal_to(2) }
  it { should validate_length_of(:alpha_3_code).is_equal_to(3) }
end
