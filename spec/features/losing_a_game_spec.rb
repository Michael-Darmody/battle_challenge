
feature 'Game over' do
  context 'when player 1 HP reaches 0' do
    before do
      sign_in_and_play
      attack_and_confirm
      allow(Kernel).to receive(:rand).and_return(100)
    end

    scenario 'Player 1 loses' do
      click_button('Attack')
      expect(page).to have_content('Mike loses!')
    end
  end
end
