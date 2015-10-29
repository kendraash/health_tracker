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
end
