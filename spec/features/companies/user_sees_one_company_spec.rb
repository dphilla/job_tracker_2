require 'rails_helper'

describe "User sees one company" do
  scenario "a user sees a company" do
    company = Company.create!(name: "ESPN")
    Category.create(name: "software")
    company.jobs.create!(title: "Developer", level_of_interest: 90, city: "Denver", category_id: Category.last.id)

    visit company_path(company)

    expect(current_path).to eq("/companies/#{company.id}")
    expect(page).to have_content("ESPN")
    expect(page).to have_content("Developer")
  end
end
