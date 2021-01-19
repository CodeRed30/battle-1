feature 'Testing form for players names' do
  scenario 'Can enter name in a form and see names on screen' do
    visit('/')
    fill_in "player_1_name", :with => "Charlie"
    fill_in "player_2_name", :with => "Katrina"
    click_button "Enter"
    expect(page).to have_text("Charlie has entered the game")
    expect(page).to have_text("Katrina has entered the game")
  end
end
