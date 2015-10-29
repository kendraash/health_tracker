require 'rails_helper'

describe "add a food process" do
  it "allows a user to add a new food with AJAX functionality", js: true do
    visit root_path
    click_on "New Food"
    fill_in "Name", :with => "Ice Cream"
    fill_in "Calories", :with => "275"
    click_on "Create Food"
    expect(page).to have_content("Ice Cream")
  end
end

describe "editing a food process" do
  it "allows a user to edit a food's information with AJAX functionality", js: true do
    test_food = Food.create(:name => "Chocolate Lava Cake", :calories => "500")
    visit root_path
    find("#edit_food_link_#{test_food.id}").click
    fill_in "Name", :with => "Chocolate Souffle"
    click_on "Update Food"
    expect(page).to have_content("Chocolate Souffle")
  end
end
