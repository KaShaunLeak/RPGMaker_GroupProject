require 'rails_helper.rb'

feature"User adds a character" do
    scenario "User successfully navigates to the new characters page from the characters page" do
        visit characters_path
        expect(page).to have_content("Create Character")
        click_link "Create Character"
        expect(page).to have_content("DeviantCharacter")

    end
    scenario "User successfully creates a New character" do
        visit new_character_path
        expect(page).to have_content("DeviantCharacter")
        fill_in "Name", with: "New capybara character"
        fill_in "Sex", with: "M"
        fill_in "Age", with: "21"
        fill_in "Race", with: "Mixed"
        fill_in "Job", with: "Chef"
        fill_in "Birthday", with: "10/12/1995"
        fill_in "Country", with: "Skyrim"
        fill_in "Personality", with: "Grumpy"
        fill_in "Backstory", with: "Took an arrow to the kneecap at age 15"
        click_button "Create Character"
        expect(page).to have_content("New capybara character")
        expect(page).to have_content("M")
        expect(page).to have_content("21")
        expect(page).to have_content("Mixed")
        expect(page).to have_content("Chef")
        expect(page).to have_content("10/12/1995")
        expect(page).to have_content("Skyrim")
        expect(page).to have_content("Grumpy")
        expect(page).to have_content("Took an arrow to the kneecap at age 15")
    end
end