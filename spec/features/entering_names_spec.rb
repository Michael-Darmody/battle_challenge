
feature 'Entering player names' do
  scenario 'players submit names' do
    sign_in_and_play
    expect(page).to have_content 'Mike vs. Mark'
  end
end
