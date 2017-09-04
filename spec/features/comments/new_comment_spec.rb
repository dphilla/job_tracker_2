require 'rails_helper'

describe "user" do
  scenario "can enter a comment for a job" do

    job = create(:job)

    visit company_job_path(job.company, job)

    fill_in "comment[content]", with: "spoke to Billy, hiring manager"
    click_on "Add New Comment"

    expect(page).to have_content("spoke to Billy, hiring manager")
  end
end
