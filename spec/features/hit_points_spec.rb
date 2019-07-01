
feature 'Viewing HP' do
  scenario 'can see player 2 hit points' do
    visit ('/')
    fill_in :player_1_name, with: 'Mike'
    fill_in :player_2_name, with: 'Mark'
    click_button 'Submit'
    expect(page).to have_content 'Mark: 100HP'
  end
end
