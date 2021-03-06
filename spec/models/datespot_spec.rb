require 'rails_helper'

RSpec.describe Datespot, type: :model do
  before(:each) do 
    DatabaseCleaner.clean
    create :category
  end

  let(:user)     { create :user }
  let(:category) { create :category }
  let(:datespot) { create :datespot }

  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:category) }
  it { should validate_presence_of(:short_description) }
  it { should validate_length_of(:short_description) }
  it { should validate_presence_of(:location) }
  it { should validate_presence_of(:price_range) }
  it { should validate_numericality_of(:price_range) }
  it { should validate_presence_of(:quirkiness_rating) }
  it { should validate_numericality_of(:quirkiness_rating) }
  it { should validate_presence_of(:website) }
  it { should validate_presence_of(:start_date) }
  it { should validate_presence_of(:end_date) }

  it { should validate_presence_of(:mon_open) }
  it { should validate_presence_of(:mon_close) }
  it { should validate_presence_of(:tue_open) }
  it { should validate_presence_of(:tue_close) }
  it { should validate_presence_of(:wed_open) }
  it { should validate_presence_of(:wed_close) }
  it { should validate_presence_of(:thu_open) }
  it { should validate_presence_of(:thu_close) }
  it { should validate_presence_of(:fri_open) }
  it { should validate_presence_of(:fri_close) }
  it { should validate_presence_of(:sat_open) }
  it { should validate_presence_of(:sat_close) }
  it { should validate_presence_of(:sun_open) }
  it { should validate_presence_of(:sun_close) }

  it 'creates a datespot with valid input' do
    expect { create :datespot, category: category }.to change { Datespot.count }.by(1)
  end
end
