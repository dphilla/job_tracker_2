
require 'rails_helper'

describe "User" do
  scenario "can go to category show page" do

    3.times do
      create(:category)
    end

    visit categories_path

    find_link("#{Category.first.name}").click

    expect(page).to have_content("#{Category.first.name}")
    expect(current_path).to eq(category_path(Category.first))

  end
end
