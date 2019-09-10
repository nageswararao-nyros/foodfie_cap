require "rails_helper"

RSpec.describe Dish, :type => :model do
  context "Tagging Queries" do

    let(:dish){build(:dish)}

    it 'Creating the Dish with out name' do
      # assertion 2
      dish.name = nil
      expect(dish.save).to eq(false)
    end

    it 'Creating the Dish with out price' do
      dish.price = nil
      expect(dish.save).to eq(false) 
    end

    it 'Creating the Dish with all Data' do
      dish.price = 50
      dish.name = "Sambar"
      dish.rating = 5
      dish.tagging_id = 2
      expect(dish.save).to eq(true) 
    end
    it 'Find dish' do
      expect(dish.name).to eq("biryani") 
    end
  end
end