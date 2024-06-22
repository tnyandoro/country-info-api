require 'rails_helper'

RSpec.describe Country, type: :model do
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:currency) }
  it { should validate_presence_of(:alpha_2_code) }
  it { should validate_presence_of(:alpha_3_code) }
end
