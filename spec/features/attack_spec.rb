
feature 'Attacking a player' do
  scenario 'player 1 attacks player 2' do
    sign_in_and_play
    click_button('Attack')
    expect(page).to have_content 'Mike attacked Mark!'
  end

  scenario 'player 2 attacks player 1' do
    sign_in_and_play
    attack_and_confirm
    click_button('Attack')
    expect(page).to have_content 'Mark attacked Mike!'
  end

  context 'dealing set damage' do
    before do
      allow(Kernel).to receive(:rand).and_return(10)
    end

    scenario 'reduce player 2 HP by 10' do
      sign_in_and_play
      attack_and_confirm
      expect(page).not_to have_content 'Mark: 100HP'
      expect(page).to have_content 'Mark: 90HP'
    end

    scenario 'reduce player 1 HP by 10' do
      sign_in_and_play
      attack_and_confirm
      attack_and_confirm
      expect(page).not_to have_content 'Mike: 100HP'
      expect(page).to have_content 'Mike: 90HP'
    end
  end

  context 'dealing random damge from 1-10' do
    scenario 'reduce player 2 HP by a random amount' do
      sign_in_and_play
      attack_and_confirm
      expect(page).not_to have_content 'Mark: 100HP'
    end

    scenario 'reduce player 1 HP by a random amount' do
      sign_in_and_play
      attack_and_confirm
      attack_and_confirm
      expect(page).not_to have_content 'Mike: 100HP'
    end
  end
end
