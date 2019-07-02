
feature 'Switching player tuns' do
  context 'seeing the current turn' do
    scenario 'when the game starts' do
      sign_in_and_play
      expect(page).to have_content("Mike's turn")
    end

    scenario 'after the player attacks' do
      sign_in_and_play
      click_button('Attack')
      click_button('Ok')
      expect(page).not_to have_content("Mike's turn")
      expect(page).to have_content("Mark's turn")
    end
  end
end
