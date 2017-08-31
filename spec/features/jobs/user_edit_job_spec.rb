
require 'rails_helper'

describe "User" do
  scenario "can edit new job" do
    create(:job)

    visit edit_company_job_path(Company.first, Job.first)

    fill_in "job[title]", with: "Teacher"
    fill_in "job[description]", with: "the bomb.com!"
    fill_in "job[level_of_interest]", with: 30
    fill_in "job[city]", with: "Denver"
    click_button "Update"

    expect(current_path).to eq("/companies/#{Company.last.id}/jobs/#{Job.last.id}")

    expect(page).to have_content("Teacher")
    expect(page).to have_content("30")
    expect(page).to have_content("Denver")
  end
end
