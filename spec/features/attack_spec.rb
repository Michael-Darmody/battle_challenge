
feature 'Attacking a player' do
  scenario 'player 1 attacks player 2' do
    sign_in_and_play
    click_button('Attack')
    expect(page).to have_content 'Mike attacked Mark!'
  end

  scenario 'reduce player 2 HP by 10' do
    sign_in_and_play
    click_button('Attack')
    click_button('Ok')
    expect(page).not_to have_content 'Mark: 100HP'
    expect(page).to have_content 'Mark: 90HP'
  end
end
