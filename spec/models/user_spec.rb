require 'rails_helper'

RSpec.describe User, type: :model do
  it "test user creation" do
    @user = create(:user)
    expect(@user).to be_valid
  end

  it "test user creation with not unique username" do
    @user = create(:user, mail: "admin2@example.com")
    @user2 = build(:user)
    expect(@user2).to_not be_valid
  end

  it "test user creation with not unique email" do
    @user = create(:user, username: "admin2")
    @user2 = build(:user)
    expect(@user2).to_not be_valid
  end

  it "test new user creation with longer than 20 characters username not to be valid" do
    @user = create(:user, username: "hhghghghghghghghghg")
    expect(@user).to_not be_valid
  end
end