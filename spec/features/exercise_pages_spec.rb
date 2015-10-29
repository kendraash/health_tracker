require 'rails_helper'

describe "add a exercise process" do
  it "allows a user to add a new exercise with AJAX functionality", js: true do
    visit root_path
    click_on "New Exercise"
    fill_in "Name", :with => "Walking"
    fill_in "Calories burned", :with => "275"
    click_on "Create Exercise"
    expect(page).to have_content("Walking")
  end
end

describe "editing an exercise process" do
  it "allows a user to edit an exercise with AJAX functionality", js: true do
    test_exercise = Exercise.create(:name => "Run", :calories_burned => "200")
    visit root_path
    find("#edit_exercise_link_#{test_exercise.id}").click
    fill_in "Name", :with => "Running"
    click_on "Update Exercise"
    expect(page).to have_content("Running")
  end
end
