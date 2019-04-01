require 'rails_helper'

RSpec.describe Document, type: :model do
  it "has a valid factory" do
    expect(FactoryBot.create(:document)).to be_valid
  end

  it "is invalid without a name" do
    expect(FactoryBot.build(:document, purchaser_name: nil)).to be_invalid
  end
end
