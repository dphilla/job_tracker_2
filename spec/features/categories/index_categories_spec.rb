
require 'rails_helper'

describe "User" do
  scenario "sees all categories on categories index" do

    3.times do
      create(:category)
    end

    visit categories_path

    expect(current_path).to eq("/categories")
    expect(page).to have_content("MyString1")
    expect(Category.count).to eq(3)
  end
end
