require 'rails_helper'

describe "User deletes existing job" do
  scenario "a user sees all the jobs for a specific company" do
    company = Company.create!(name: "ESPN")
    Category.create(name: "Software")
    company.jobs.create!(title: "Developer", level_of_interest: 70, city: "Denver", category_id: Category.last.id)
    company.jobs.create!(title: "QA Analyst", level_of_interest: 70, city: "New York City", category_id: Category.last.id)

    visit company_jobs_path(company)

    first(:link, "Delete").click

    expect(page).to_not have_content("Developer")
  end
end
