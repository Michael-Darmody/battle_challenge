
feature 'Viewing HP' do
  scenario 'can see player 1 hit points' do
    sign_in_and_play
    expect(page).to have_content 'Mike: 100HP'
  end

  scenario 'can see player 2 hit points' do
    sign_in_and_play
    expect(page).to have_content 'Mark: 100HP'
  end
end
