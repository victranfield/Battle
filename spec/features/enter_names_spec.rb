feature 'Enter names' do
  scenario 'submitting names' do
    visit('/')
    fill_in :player_1_name, with: 'Spiderman'
    fill_in :player_2_name, with: 'Batman'
    click_button 'Submit'
    expect(page).to have_content 'Spiderman vs. Batman'
  end
end
