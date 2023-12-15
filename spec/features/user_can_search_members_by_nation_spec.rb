require 'rails_helper'

feature "user can search for members by nation" do
  scenario "user submits valid nation name" do
    # As a user
    # When I visit "/"
    visit '/'

    select "Fire Nation", from: :nation
    # And I select "Fire Nation" from the dropdown
    click_on "Search For Members"
    # And I click on "Search For Members"
    expect(current_path).to eq(search_path)
    
    within(first(".character")) do
      expect(page).to have_content("Name")
      expect(page).to have_content("Character Image:")
      expect(page).to have_content("Allies:")
      expect(page).to have_content("Enemies:")
      expect(page).to have_content("Affiliations:")
    end
    

    # And I should see a name, role, party, and district for each member
  end
end