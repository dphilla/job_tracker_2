
require 'rails_helper'

describe "User" do
  scenario "can delete a category" do

    3.times do
      create(:category)
    end

    visit categories_path

    first(:link, "Delete").click

    expect(current_path).to eq("/categories")
    expect(Category.count).to eq(2)
  end
end
