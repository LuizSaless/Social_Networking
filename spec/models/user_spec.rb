require 'rails_helper'

RSpec.describe User, type: :model do
    it "user is valid" do
    user = User.new(
      name: "Luiz",
      email: "luiz@teste.com",
      phone: "999707099",
      avatar:  Rack::Test::UploadedFile.new('spec/support/test-avatar.png', 'image/png'),
      password: "123456" )

    expect(user).to be_valid
    end

    
  it "user is not valid" do

    user = User.new(
      name: "Luiz",
      email: "luiz@teste.com",
      phone: "999707099",
      password: "123456"
    )

    expect(user).to_not be_valid

  end

  it "user should have a name" do

    user = User.new(
      email: "luiz@teste.com",
      phone: "999707099",
      password: "123456",
      avatar:  Rack::Test::UploadedFile.new('spec/support/test-avatar.png', 'image/png'),
    )

    expect(user).to_not be_valid

  end
end