FactoryBot.define do
    factory :user do
        name { "Luiz" }
        email { "user#{rand(1..1000)}@user.com" }
        phone { "999707099" }
        avatar { Rack::Test::UploadedFile.new(Rails.root.join('spec/support/test-avatar.png'), 'image/png') }
        password { "123456" }
    end
end