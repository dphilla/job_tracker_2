
require 'rails_helper'

describe "User" do
  scenario "can edit a category" do

    3.times do
      create(:category)
    end

    category = Category.first

    visit categories_path



    first(:link, "Edit").click
    fill_in "category[name]", with: "HR"
    click_button "Update"

    expect(current_path).to eq("/categories/#{category.id}")
    expect(page).to have_content("HR")
  end
end
