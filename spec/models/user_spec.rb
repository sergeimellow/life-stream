require 'rails_helper'

RSpec.describe User, type: :model do
  jack = FactoryGirl.create(:user)
  it 'has a profile' do
    expect(jack.profile).not_to be nil
  end
end
