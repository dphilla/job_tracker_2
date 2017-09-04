
require 'rails_helper'

describe "user" do
  scenario "can enter a contact for a company" do

    job = create(:job)
    company = job.company

    visit company_path(company)

    fill_in "contact[name]", with: "Sal Espinosa"
    fill_in "contact[position]", with: "Teacher"
    fill_in "contact[email]", with: "toocool@skool.com"
    click_on "Add New Contact"

    expect(page).to have_content("Sal Espinosa")
  end
end
