require 'rails_helper'

RSpec.describe Message, type: :model do
  it "test new message creation with valid attributes to be valid" do
    @message = create(:message)
    expect(@message).to be_valid
  end

  it "test new message creation with nil user_id not to be valid" do
    @message = create(:message, user_id: nil)
    expect(@message).to_not be_valid
  end

  it "test new message creation with non existing user_id not to be valid" do
    @user = create(:user, username: "admin9")
    @message = build(:message, user_id: (@user.id + 1))
    expect(@user2).to_not be_valid
  end
end