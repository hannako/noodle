require 'profile'

describe Profile do

it 'belongs to a user' do
    profile = build(:profile)
    user = build(:user)
    user.profile = profile
  # expect(user.profile.address_line_one).to eq '31b'
    expect(profile.user_id).to eq 1
  end

end
