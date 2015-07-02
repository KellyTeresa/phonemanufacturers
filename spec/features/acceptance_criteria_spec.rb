# You are tasked with creating a system that tracks used cell phones at a used cell phone store. Create a Rails application that satisfies the following user stories:

feature "recording phone manufacturers" do
  # As a used phone salesperson
  # I want to record a phone manufacturer
  # So that I can keep track of the types of phones found in the store
  #
  # * Acceptance Criteria
  #
  # - I must specify a phone manufacturer name and country
  # - If I do not specify the required information, I am presented with errors.
  # - If I specify the required information, the phone manufacturer is recorded
  #  and I am redirected to the index of phone manufacturers
  scenario "add manufacturer successfully" do
    visit root_path
    click_link new_manufacturer_path
    fill_in "Name", with: "SoftBank"
    fill_in "Country", with: "Japan"
    click_button "Create Manufacturer"

    expect(page).to have_content "SoftBank"
    expect(current_path).to eq(manufacturers_path)
  end

  xscenario "attempt to add manufacturer unsuccessfully" do

  end

end


#
# As a used phone salesperson
# I want to record a newly acquired used cell phone
# So that I can list it in my store
#
# * Acceptance Criteria
#
# - I must specify the cell phone manufacturer, year and battery life (an association between the phone and an existing manufacturer should be created).
# - Only years from 2003 and above can be specified.
# - I can optionally specify a description of the phone.
# - If I enter all of the required information in the required formats, the phone is recorded and I am presented with a notification of success.
# - If I do not specify all of the required information in the required formats, the phone is not recorded and I am presented with errors.
# - Upon successfully creating a phone, I am redirected back to the index of phones.
#
# * NOTES
#
# - User authentication is not required for this application.
# - You don't need nested resources.
# - Utilize TDD to write tests for these behaviors.
# - W000ooo0000 TDD!!
# - Make sure your tests pass.
# - Make sure that your app is usable by providing links to navigate between the different pages.
# - Make sure that your database has any necessary constraints.
# - Make sure that your models contain any necessary validations and associations.
