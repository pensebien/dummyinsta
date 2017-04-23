FactoryGirl.define do
    factory :post do
        content "nofilter"
        image Rack::Test::UploadedFile.new(Rails.root + "spec/files/images/emma_deck.jpg", "image/jpg")
    end
end