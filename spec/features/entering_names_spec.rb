
feature 'Entering player names' do
  scenario 'players submit names' do
    visit ('/')
    fill_in :player_1_name, with: 'Mike'
    fill_in :player_2_name, with: 'Mark'
    click_button 'Submit'
    expect(page).to have_content 'Mike vs. Mark'
  end
end
