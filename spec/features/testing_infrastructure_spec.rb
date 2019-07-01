
feature 'Testing the infrastructure' do
  scenario 'when visiting the homepage, check for message' do
    visit ('/')
    expect(page).to have_content('Testing infrastructure working!')
  end
end
