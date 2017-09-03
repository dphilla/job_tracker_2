require 'rails_helper'

describe "User" do
  scenario "a user can create a new category" do
    visit new_category_path

    fill_in "category[name]", with: "Finance"
    click_button "Create"

    expect(current_path).to eq("/categories/#{Category.last.id}")
    expect(page).to have_content("Finance")
  end
end

