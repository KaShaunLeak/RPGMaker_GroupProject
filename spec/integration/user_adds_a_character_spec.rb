require 'rails_helper.rb'

feature"User adds a character" do
    scenario "User successfully navigates to the new characters page from the characters page" do
        visit characters_path
        expect(page).to have_content("New Character")
        click_link "New Character"
        expect(page).to have_content("DeviantCharacter")
        expect(page).to have_field("Name")
        expect(page).to have_field("Sex")
        expect(page).to have_field("Age")
        expect(page).to have_field("Job")
    end
end