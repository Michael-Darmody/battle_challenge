
feature 'Attacking a player' do
  scenario 'player 1 attacks player 2' do
    sign_in_and_play
    click_button('Attack')
    expect(page).to have_content 'Mike attacked Mark!'
  end

  scenario 'player 2 attacks player 1' do
    sign_in_and_play
    click_button('Attack')
    click_button('Ok')
    click_button('Attack')
    expect(page).to have_content 'Mark attacked Mike!'
  end

  scenario 'reduce player 2 HP by 10' do
    sign_in_and_play
    click_button('Attack')
    click_button('Ok')
    expect(page).not_to have_content 'Mark: 100HP'
    expect(page).to have_content 'Mark: 90HP'
  end

  scenario 'reduce player 1 HP by 10' do
    sign_in_and_play
    click_button('Attack')
    click_button('Ok')
    click_button('Attack')
    click_button('Ok')
    expect(page).not_to have_content 'Mike: 100HP'
    expect(page).to have_content 'Mike: 90HP'
  end
end
